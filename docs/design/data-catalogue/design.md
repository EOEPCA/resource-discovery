# Data Catalogue

[eoAPI](https://eoapi.dev) provides for discovery (findability) and visualization (accessibility) of geospatial data in a Spatio-Temporal Asset Catalog ([STAC](https://stacspec.org)). It combines software components for interacting with vector and raster data in a modular architecture.

The eoAPI architecture includes the tried-and-tested [pgSTAC](https://github.com/stac-utils/pgstac) and [STAC-FastAPI](https://github.com/stac-utils/stac-fastapi) for performant data query and retrieval and a specification-compliant STAC API, enabling metadata discovery and management of STAC assets. 

In addition to resource discovery, eoAPI supports data access for vector data ([TiPG](https://github.com/developmentseed/tipg)) and raster data access and visualization ([TiTiler](https://github.com/developmentseed/titiler)). Through integration of these components, eoAPI facilitates the dynamic rendering of metadata queries into visual mosaics, which is a unique capability. Therefore, eoAPI also used in the [Data Access Building Block](https://eoepca.readthedocs.io/projects/data-access).

## Key features for resource discovery

For the resource discovery building block, eoAPI provides the following features:

1. Implements STAC API 1.0.0
2. Implements OGC Common Query Language (CQL2)
3. Supports all STAC extensions and individual properties out of the box
4. Supports multiple backends (e.g., Postgres, ElasticSearch)
5. Is scalable to millions of STAC metadata records
6. Can be deployed standalone or implemented in other services via a Python API