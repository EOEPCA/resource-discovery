# Access Control

The STAC API of the Data Catalogue (eoAPI) decides, collection by collection, who may read and who may write. This is done by [STAC Auth Proxy](https://github.com/developmentseed/stac-auth-proxy), which sits in front of the STAC API and checks every request.

## How it works

```
Client (STAC Manager, pystac-client, curl, ...)
  │  sends a login token from Keycloak (not needed for public data)
  ▼
STAC Auth Proxy  ── checks the token and works out what the caller may access
  ▼
eoAPI STAC API   ── returns only what the caller is allowed to see
```

- **Reading** (browsing, searching): the proxy adds a filter to the request, so the response only contains collections and items the caller may see.
- **Writing** (create, update, delete): the proxy rejects the request if the caller may not write to that collection.

The token comes from the [IAM Building Block](https://eoepca.readthedocs.io/projects/iam/) (Keycloak). The filters are [CQL2](https://docs.ogc.org/is/21-065r2/21-065r2.html) expressions built as structured data, so nothing in a token can change their meaning.

Some endpoints are always open: the landing page (`/`), the API description (`/api`, `/api.html`), `/conformance`, `/docs/oauth2-redirect`, and the health and metrics endpoints (`/healthz`, `/_mgmt/ping`, `/_mgmt/metrics`).

## Who can access what

The collection ID decides access. Everything before the first `.` is the owner:

| Collection ID       | Example                   | Who can read                                         | Who can write                           |
| ------------------- | ------------------------- | ---------------------------------------------------- | --------------------------------------- |
| No `.` in the ID    | `sentinel-2-l2a`          | Everyone, also without login                         | [Catalogue editors](#catalogue-editors) |
| `<username>.<name>` | `alice.my-experiments`    | User `alice`                                         | User `alice`                            |
| `<group-id>.<name>` | `pn56su-dss-0034.landsat` | Members of `pn56su-dss-0034` or `pn56su-dss-0034-ro` | Members of `pn56su-dss-0034`            |

Anything not covered by this table is denied.

### Users

Logged-in users can create as many collections as they like, as long as the ID starts with their username and a `.`. The username is taken from the token's `preferred_username` claim.

### Groups

Group membership is taken from the token's `groups` claim. Only Keycloak groups shaped like `/dss/<group-id>` count, and `<group-id>` must contain `-dss-`:

- `/dss/pn56su-dss-0034`: read and write `pn56su-dss-0034.*` collections
- `/dss/pn56su-dss-0034-ro`: read only
- `/dss/pn56su-dss-0034-mgr`: no data access (this group is for storage management)

Usernames and group IDs only work as prefixes if they use letters, digits, `_` and `-`.

!!! warning "Writing items means writing the collection"
    Anyone who can add items to a collection can also edit or delete the collection itself.

### Catalogue editors

The `stac_editor` role lets a caller write to **every** collection, including public ones. It applies when:

1. the token was issued by one of the trusted Keycloak clients listed in the proxy's `STAC_EDITOR_CLIENT_IDS` setting (checked through the token's `azp` claim), and
2. the token carries the `stac_editor` role of one of those clients.

Two kinds of callers use it:

- **People** who manage the catalogue. In the reference deployment, members of the Keycloak group `data-access-admin` get the role, for example when they log in to STAC Manager.
- **Services** such as the [Registration Harvester](https://eoepca.readthedocs.io/projects/resource-registration/), which log in without a username or groups.

Granting or removing the role is done in Keycloak, without redeploying anything. Each use of the role is logged.

!!! danger "Only trust confidential clients"
    List only confidential clients in `STAC_EDITOR_CLIENT_IDS`, never a client where users can sign themselves up.

## Clients

Send the token with **every** request, not just when writing. Without a token you only see public collections.

[STAC Manager](https://github.com/developmentseed/stac-manager), the basis of the [Resource Administration UI](../resource-admin-ui/index.md), does this automatically once you log in (from `v1.0.0`). With `pystac-client`:

```python
from pystac_client import Client

client = Client.open(
    "https://eoapi.<your-domain>/stac",
    headers={"Authorization": f"Bearer {token}"},
)
```

To get a token and work with the STAC API from Python or the command line, see the [EOEPCA user client](https://eoepca.readthedocs.io/projects/user-client/).

## Deployment

To set this up on your own platform, follow the [Data Access deployment guide](https://eoepca.readthedocs.io/projects/deploy/en/latest/building-blocks/data-access/#stac-api-access-control). It needs STAC Auth Proxy `v1.0.0` or later, which comes with the [eoAPI Helm chart](https://github.com/developmentseed/eoapi-k8s) from version `0.8.1`.

The rules live in one Python file, [`eoepca_filters.py`](https://github.com/EOEPCA/eoepca-plus/blob/deploy-develop/argocd/eoepca/data-access/parts/stac-auth-proxy/eoepca_filters.py), loaded into the proxy from a ConfigMap. To change the rules, edit the file, update the ConfigMap and restart the proxy. No new image is needed. The EOEPCA+ demo cluster keeps this file and its [tests](https://github.com/EOEPCA/eoepca-plus/blob/deploy-develop/argocd/eoepca/data-access/parts/stac-auth-proxy/test_eoepca_filters.py) in the `eoepca-plus` repository.

## References

- [EOEPCA/resource-discovery#203](https://github.com/EOEPCA/resource-discovery/issues/203): design of the access rules
- [EOEPCA/eoepca-plus#118](https://github.com/EOEPCA/eoepca-plus/pull/118): implementation
- [STAC Auth Proxy documentation](https://developmentseed.org/stac-auth-proxy/)
- [stac-manager#71](https://github.com/developmentseed/stac-manager/pull/71): STAC Manager sends the token with every request
