# Design

[pycsw](https://pycsw.org/) is a Python implementation of the OGC Catalogue Services for the Web (CSW) and OGC API Records standards. These standards define common interfaces to discover, browse, and query metadata about spatial data, web services, and related resources. pycsw enables users to publish a catalogue of dataset descriptions (metadata) to the web, using standards-based interfaces and formats, such that it can be queried and updated by catalogue clients. pycsw can be deployed as a standalone server or can be composed and integrated into other applications via Python API. pycsw allows for the publishing and discovery of geospatial metadata via numerous search APIs (CSW 2/CSW 3, OGC API – Records, STAC API, OpenSearch, OAI-PMH, SRU). Existing repositories of geospatial metadata can also be exposed, providing a standards-based metadata and catalogue component of spatial data infrastructures.
pycsw is an official OSGeo Project, is certified OGC-compliant, and an OGC Reference Implementation2. It is used in mission critical 24/7 production environments. Current deployments are listed in [https://pycsw.org/community/] and [https://github.com/geopython/pycsw/wiki/Live-Deployments]. pycsw was deployed as the Resource Catalogue for the EOEPCA project. All contributions and development were accepted into the upstream OSGeo project.

Features of pycsw include:
 - Certified OGC Compliant and OGC Reference Implementation for both CSW 2.0.2 and CSW 3.0.0
 - Implements several OGC standards, such as API - Records - Part 1: Core, API - Features - Part 3: Filtering, API - Features - Part 4: Create, Replace, Update and Delete, Common Query Language (CQL2), OpenSearch Geo and Time Extensions
 - Implements STAC API 1.0.0
 - Harvesting support for OGC standards, such as WMS, WFS, WCS, WPS, WAF, CSW, SOS, and implements the Open Archives Initiative Protocol standard
 - Implements INSPIRE Discovery Services 3.0, ISO Metadata Application Profile 1.0.0, FGDC CSDGM Application Profile for CSW 2.0
 - Implements full text search capabilities
 - Supports ISO, Dublin Core, DIF, FGDC, Atom, GM03 and DataCite metadata models
 - Deployment via CGI, WSGI, and Helm Charts
 - Can be deployed standalone or implemented in other services via a Python API
 - Simple YAML configuration
 - Transactional capabilities (OGC API - Records and CSW-T)
 - Flexible repository configuration
 - Connectivity to GeoNode, HHypermap, Open Data Catalog, CKAN
 - Federated catalogue distributed searching
 - Realtime XML Schema validation
 - Extensible profile plugin architecture


