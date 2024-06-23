# Usage

## Introduction

[OGC API - Records](https://ogcapi.ogc.org/records) is a multi-part draft specification that offers the capability to
create, modify, and query metadata on the Web. The draft specification enables the
discovery of geospatial resources by standardizing the way collections of descriptive
information about the resources (metadata) are exposed.  The draft specification also
enables the discovery and sharing of related resources that may be referenced from
geospatial resources or their metadata by standardizing the way all kinds of records
are exposed and managed.  Part 1 covers read-only access to records and simple query
capabilities.  Additional capabilities that address specific needs will be specified
in additional parts. Capabilities for richer queries or to create, update or delete
records will be specified in additional parts.

!!! note
    OGC API - Records leverages [OGC API - Features](features.md#usage) as a baseline with similar
    URL endpoints and request/response workflow, for the Searchable Catalog and Local.

### Background

> History

  OGC API - Records standard work was started in 2018 and originally referred to as
  **OGC CAT4.0**.  It has since followed the development of OGC API - Features as a baseline.

> Versions

  **OGC API - Records - Part 1: Core** is currently in draft and is planned to be
  submitted to the OGC Architecture Board (OAB) in December 2023 for public review
  in Q1 2024.

> Test suite

  There are no test suites currently implemented; they will be made available once
  the specification is approved, and an executable test suite (ETS) is made availabe
  as per of OGC CITE.

> Implementations

  Implementations can be found on the [implementations page](https://github.com/opengeospatial/ogcapi-records/blob/master/implementations.md).


#### Usage

OGC API - Records supports 3 main deployment patterns:

- Crawlable catalog: browse and navigation of a set of metadata records via links
- Searchable catalog: API capability to query and filter a collection of metadata records based on serch criteria (bbox, datetime, q, etc.)
- Local resources catalog: searchable catalog functionality applied at the collection level of an API

OGC API - Records also supports a core queryable model.  That is, a set of common queryable properties that can be used against any
OGC API - Records server regardless of the metadata format/standard and/or the design of the underlying metadata repository.

!!! note
    For the purposes of this deep dive, we will focus on the Searchable catalog deployment pattern.

#### Relation to other standards

OGC Catalogue Service for the Web (CSW): The CSW standard is more appropriate when working with client applications that only support classic OGC Web Services. Note as well that CSW adopts a core metadata model based on Dublin Core by default. In contrast, OGC API - Records includes recommendations to support HTML and GeoJSON as encodings, where practical. Implementations of OGC API - Records may also optionally support XML metadata formats, such as ISO 19115/19139.


### Overview of Resources

**OGC API - Records - Part 1: Core** defines the resources listed in
the following table.

<table>
  <tr>
    <th>Resource</th>
    <th>Method</th>
    <th>Path</th>
    <th>Purpose</th>
  </tr>
  <tr>
    <td>Landing page</td>
    <td>GET</td>
    <td>/</td>
    <td>This is the top-level resource, which serves as an entry point.</td>
  </tr>
  <tr>
    <td>Conformance declaration</td>
    <td>GET</td>
    <td>/conformance</td>
    <td>This resource presents information about the functionality that is implemented by the server.</td>
  </tr>
  <tr>
    <td>API definition</td>
    <td>GET</td>
    <td>/api</td>
    <td>This resource provides metadata about the API itself. Note use of /api on the server is optional and the API definition may be hosted on completely separate server.</td>
  </tr>
  <tr>
    <td>Record collections</td>
    <td>GET</td>
    <td>/collections</td>
    <td>This resource lists the record collections that are offered through the API.</td>
  </tr>
  <tr>
    <td>Record collection</td>
    <td>GET</td>
    <td>/collections/{collectionId}</td>
    <td>This resource describes the record collection identified in the path.</td>
  </tr>
  <tr>
    <td>Records access</td>
    <td>GET</td>
    <td>/collections/{collectionId}/items</td>
    <td>This resource presents the records that are contained in the collection.</td>
  </tr>
  <tr>
    <td>Record core</td>
    <td>GET</td>
    <td>/collections/{collectionId}/items/{recordId}</td>
    <td>This resource presents the record that is identified in the path</td>
  </tr>
</table>

As mentioned earlier, OGC API - Records heavily leverages OGC API - Features as a baseline building block.  While OGC API - Records
allows for any metadata model, a key difference and value add is the ability to describe a core record model and queryables.  This
allows for interoperability and integration across catalogs to be able to describe geospatial resources in a consistent manner.

For example, a metadata repository can be modelled after the ISO 19115 standard, and be exposed via OGC API - Records by means
of "mapping" the ISO elements to the core record model and queryables.

The core record is the atomic unit of information in a catalog.  A full description of the core properties of a record can be
found in <https://docs.ogc.org/DRAFTS/20-004.html#core-properties>.  The core record is a GeoJSON compatible representation
with fixed elements in the `properties` object/block.

### Example

This [demonstration server](https://demo.pycsw.org/cite) publishes metadata geospatial data through an interface that conforms to OGC API - Records.

An example request that can be used to retrieve data from the pycsw OGC CITE instance is <https://demo.pycsw.org/cite/collections/metadta:main?f=html>

Note that the response to the request is HTML in this case.

Alternatively, the same data can be retrieved in GeoJSON format, through the request <https://demo.pycsw.org/cite/collections/metadata:main?f=json>

A client application can then retrieve the GeoJSON document and display or process it.

## Resources

### Landing page

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#landing-page) deep dive
for a detailed explanation.

### Conformance declarations

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#conformance-declarations) deep dive
for a detailed explanation.

### API Definition

Given OGC API - Records uses OGC API - Common as a building block, please see the [OGC API - Features](features.md#api-definition) deep dive
for a detailed explanation of an example implementation.

### Records collections

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#feature-collections) deep dive
for a detailed initial explanation.

OGC API - Records collection descriptions provide the following additional properties:

- A required title for the collection
- A required type for the collection
- A required indicator about the type of the items in the collection (`record`)

Below is an extract from the response to the request <https://demo.pycsw.org/cite/collections?f=json>
illustrating a single record collection:

```json
{
  "id": "metadata:main",
  "title": "pycsw OGC CITE demo and Reference Implementation",
  "description": "pycsw is an OARec and OGC CSW server implementation written in Python. pycsw fully implements the OGC API - Records and OpenGIS Catalogue Service Implementation Specification (Catalogue Service for the Web). Initial development started in 2010 (more formally announced in 2011). The project is certified OGC Compliant, and is an OGC Reference Implementation. Since 2015, pycsw is an official OSGeo Project. pycsw allows for the publishing and discovery of geospatial metadata via numerous APIs (CSW 2/CSW 3, OpenSearch, OAI-PMH, SRU). Existing repositories of geospatial metadata can also be exposed, providing a standards-based metadata and catalogue component of spatial data infrastructures. pycsw is Open Source, released under an MIT license, and runs on all major platforms (Windows, Linux, Mac OS X)",
  "itemType": "record",
  "crs": "http://www.opengis.net/def/crs/OGC/1.3/CRS84",
  "links": [
    {
      "rel": "self",
      "type": "application/json",
      "title": "This document as JSON",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main?f=json",
      "hreflang": "en-US"
    },
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main?f=html",
      "hreflang": "en-US"
    },
    {
      "rel": "items",
      "type": "application/geo+json",
      "title": "items as GeoJSON",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/items?f=json",
      "hreflang": "en-US"
    },
    {
      "rel": "items",
      "type": "text/html",
      "title": "items as HTML",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/items?f=html",
      "hreflang": "en-US"
    },
    {
      "rel": "http://www.opengis.net/def/rel/ogc/1.0/queryables",
      "type": "application/schema+json",
      "title": "Queryables as JSON",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/queryables?f=json",
      "hreflang": "en-US"
    },
    {
      "rel": "http://www.opengis.net/def/rel/ogc/1.0/queryables",
      "type": "text/html",
      "title": "Queryables as HTML",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/queryables?f=html",
      "hreflang": "en-US"
    }
  ]
}
```

### Records collection

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#feature-collection) deep dive
for a detailed initial explanation, as well as the [Records collections](#records-collections) description..

### Records access

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#features) deep dive
for a detailed explanation.

Below is an extract from the response to the request <https://demo.pycsw.org/cite/collections/metadata:main/items?f=json>

```json
{
  "type": "FeatureCollection",
  "features": [
    {
      "id": "urn:uuid:19887a8a-f6b0-4a63-ae56-7fba0e17801f",
      "type": "Feature",
      "geometry": null,
      "time": null,
      "properties": {
        "themes": [],
        "updated": "2021-02-15T21:39:18Z",
        "type": "http://purl.org/dc/dcmitype/Image",
        "title": "Lorem ipsum",
        "description": "Quisque lacus diam, placerat mollis, pharetra in, commodo sed, augue. Duis iaculis arcu vel arcu.",
        "formats": [
          "image/svg+xml"
        ],
        "keywords": [
          "Tourism--Greece"
        ]
      },
      "links": [
        {
          "rel": "self",
          "type": "application/geo+json",
          "title": "urn:uuid:19887a8a-f6b0-4a63-ae56-7fba0e17801f",
          "name": "item",
          "description": "urn:uuid:19887a8a-f6b0-4a63-ae56-7fba0e17801f",
          "href": "https://demo.pycsw.org/cite/collections/metadata:main/items/urn:uuid:19887a8a-f6b0-4a63-ae56-7fba0e17801f"
        },
        {
          "rel": "collection",
          "type": "application/json",
          "title": "Collection",
          "name": "collection",
          "description": "Collection",
          "href": "https://demo.pycsw.org/cite/collections/metadata:main"
        }
      ]
    }
  ],
  "links": [
    {
      "rel": "self",
      "type": "application/geo+json",
      "title": "This document as GeoJSON",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/items?limit=1&f=json",
      "hreflang": "en-US"
    },
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/items?limit=1&f=html",
      "hreflang": "en-US"
    },
    {
      "rel": "collection",
      "type": "application/json",
      "title": "Collection URL",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main",
      "hreflang": "en-US"
    },
    {
      "rel": "next",
      "type": "application/geo+json",
      "title": "items (next)",
      "href": "https://demo.pycsw.org/cite/collections/metadata:main/items?limit=1&offset=1",
      "hreflang": "en-US"
    }
  ],
  "numberMatched": 12,
  "numberReturned": 1
}
```

Note that this document is a valid GeoJSON document.

OGC API - Records supports the same query parameters as specified in OGC API - Features.  In addition, OGC API - Records adds a set of core, fixed
queryables.  An example query based on a "search engine" style search using the **q** parameter is <https://demo.pycsw.org/cite/collections/metadata:main/items?f=json&q=lorem>

!!! note
    Consult the OGC API - Records - Part 1: Core specification for more information on core queryables.


### Record core

Given OGC API - Records uses OGC API - Common and OGC API - Features as building blocks, please see the [OGC API - Features](features.md#feature) deep dive
for a detailed explanation.

## Summary

OGC API - Records provides functionality for working with metadata data on the Web. This deep dive provided an overview of the standard and the various Resources and endpoints that are supported.
