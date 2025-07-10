# Specification

# OpenAPI/Swagger description
<swagger-ui src="https://resource-catalogue.develop.eoepca.org/openapi"/>

# Endpoints

## OGC API - Records

### Landing page

`GET /catalogue`

#### Description

Returns an overview of the service, endpoints, and contact.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The landing page</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The landing page</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### OpenAPI

`GET /catalogue/openapi`

#### Description

Provides an OpenAPI document describing service endpoints, models,
perameters, and other API information.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The OpenAPI document</p></td>
<td
style="text-align: left;"><p>application/vnd.oai.openapi+json;version=3.0</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The OpenAPI document via
Swagger</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Conformance

`GET /catalogue/conformance`

#### Description

Returns a list of supported OGC API conformance classes.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The conformance page</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The conformance page</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Collections

`GET /catalogue/collections`

#### Description

Returns a list of collections of metadata.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The listing of metadata
collections</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The listing of metadata
collections</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Main collection

`GET /catalogue/collections/metadata:main`

#### Description

Returns a description of the main collection of metadata.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The description of the main metadata
collection</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The description of the main metadata
collection</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Main collection queryables

`GET /catalogue/collections/metadata:main/queryables`

#### Description

Returns a listing of all queryables of the main collection of metadata.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The main metadata collection’s
queryables</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The main metadata collection’s
queryables</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Metadata collection items

`GET /catalogue/collections/metadata:main/items`
`POST /catalogue/collections/metadata:main/items`

#### Description

Returns metadata items as a result of query.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>q</p></td>
<td style="text-align: left;"><p>Free-text search terms to
query.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>bbox</p></td>
<td style="text-align: left;"><p>The record bounding bounding box to
filter on. Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>datetime</p></td>
<td style="text-align: left;"><p>The temporal period to filter on.
Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>startindex</p></td>
<td style="text-align: left;"><p>The page/offset on which to apply on
the result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>limit</p></td>
<td style="text-align: left;"><p>The limit on which to apply on the
result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>filter</p></td>
<td style="text-align: left;"><p>The CQL TEXT filter to apply when
querying records.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

##### JSON Body Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p><code>&lt;object&gt;</code></p></td>
<td style="text-align: left;"><p>JSON payload conforming to an OGC CQL
expression</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
</tbody>
</table>

### Metadata collection item

`GET /catalogue/collections/metadata:main/items/{recordId}`

#### Description

Returns a single metadata item.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code>, <code>xml</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   application/xml

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>404</p></td>
<td style="text-align: left;"><p>Record not found</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>404</p></td>
<td style="text-align: left;"><p>Record not found</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

## OGC CSW 3.0 / OpenSearch

### GET Capabilities / Description Document

`GET /catalogue/csw`

#### Description

Returns the Capabilities XML or OpenSearch description document.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>service</p></td>
<td style="text-align: left;"><p>The OWS service to use. Fixed to 'CSW'
in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>version</p></td>
<td style="text-align: left;"><p>The OWS service version to use. One of
'3.0.0' or '2.0.2'.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>request</p></td>
<td style="text-align: left;"><p>The OWS request type to use. Fixed to
'GetCapabilities' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>mode</p></td>
<td style="text-align: left;"><p>The mode flag to use. Fixed to
'opensearch' in this request.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/xml

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>Capabilities XML</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The OpenSearch Description Document (if
'mode=opensearch' is specified)</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
</tbody>
</table>

### GET Domain Values

`GET /catalogue/csw`

#### Description

Returns unique values of properties and API parameters.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>service</p></td>
<td style="text-align: left;"><p>The OWS service to use. Fixed to 'CSW'
in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>version</p></td>
<td style="text-align: left;"><p>The OWS service version to use. One of
'3.0.0' or '2.0.2'.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>request</p></td>
<td style="text-align: left;"><p>The OWS request type to use. Fixed to
'GetDomain' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>valuereference</p></td>
<td style="text-align: left;"><p>The property name to query</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>parametername</p></td>
<td style="text-align: left;"><p>The API parameter to query</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/xml

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>GetDomain response XML</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
</tbody>
</table>

### GET Records

`GET /catalogue/csw`

#### Description

Returns metadata records based on search request parameters.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>service</p></td>
<td style="text-align: left;"><p>The OWS service to use. Fixed to 'CSW'
in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>version</p></td>
<td style="text-align: left;"><p>The OWS service version to use. One of
'2.0.2' or '3.0.0'.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>request</p></td>
<td style="text-align: left;"><p>The OWS request type to use. Fixed to
'GetRecords' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>mode</p></td>
<td style="text-align: left;"><p>The mode to to use. Fixed to
'opensearch' in this request.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>typenames</p></td>
<td style="text-align: left;"><p>Metadata record type to query. Fixed to
'csw:Record' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>elementsetname</p></td>
<td style="text-align: left;"><p>Metadata subset. One of 'brief',
'summary' or 'full' (default).</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>outputformat</p></td>
<td style="text-align: left;"><p>The metadata encoding to use. One of
'application/xml' or 'application/json'</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>outputschema</p></td>
<td style="text-align: left;"><p>The metadata record schema to use. One
of 'http://www.opengis.net/cat/csw/3.0' or
'http://www.isotc211.org/2005/gmd'</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>recordids</p></td>
<td style="text-align: left;"><p>Comma-separated list of 1..n record ids
to return</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>q</p></td>
<td style="text-align: left;"><p>Free-text search terms to
query.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>bbox</p></td>
<td style="text-align: left;"><p>The record bounding bounding box to
filter on. Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>time</p></td>
<td style="text-align: left;"><p>The temporal period to filter on.
Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>start</p></td>
<td style="text-align: left;"><p>The starting temporal period to filter
on. Expressed as ISO8601.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>start</p></td>
<td style="text-align: left;"><p>The ending temporal period to filter
on. Expressed as ISO8601.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>startposition</p></td>
<td style="text-align: left;"><p>The page/offset on which to apply on
the result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>maxrecords</p></td>
<td style="text-align: left;"><p>The limit on which to apply on the
result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:cloudCover</p></td>
<td style="text-align: left;"><p>Percentage of cloud cover to filter on
(number).</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>eo:instrument</p></td>
<td style="text-align: left;"><p>Instrument to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:platform</p></td>
<td style="text-align: left;"><p>Platform to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>eo:orbitDirection</p></td>
<td style="text-align: left;"><p>Orbit direction to filter on. One of
'DESCENDING' or 'ASCENDING'</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:orbitNumber</p></td>
<td style="text-align: left;"><p>Orbit number to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>eo:processingLevel</p></td>
<td style="text-align: left;"><p>The processing level applied to the
entry</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:productType</p></td>
<td style="text-align: left;"><p>Product type to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>eo:productType</p></td>
<td style="text-align: left;"><p>Product type to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:sensorType</p></td>
<td style="text-align: left;"><p>Sensor type to filter on.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>eo:snowCover</p></td>
<td style="text-align: left;"><p>Percentage of snow cover to filter on
(number).</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>eo:spectralRange</p></td>
<td style="text-align: left;"><p>Sensor spectral range to filter
on.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/xml

-   application/atom+xml

-   application/json

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The result set corresponding to a given
search</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The result set corresponding to a given
search (if 'mode=opensearch' is specified)</p></td>
<td style="text-align: left;"><p>application/atom+xml</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The result set corresponding to a given
search</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
</tbody>
</table>

### GET Record by Identifier

`GET /catalogue/csw`

#### Description

Returns a single metadata record by identifier.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>service</p></td>
<td style="text-align: left;"><p>The OWS service to use. Fixed to 'CSW'
in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>version</p></td>
<td style="text-align: left;"><p>The OWS service version to use. One of
'3.0.0' or '2.0.2'.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>request</p></td>
<td style="text-align: left;"><p>The OWS request type to use. Fixed to
'GetRecordById' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>id</p></td>
<td style="text-align: left;"><p>The mode flag to use. Fixed to
'opensearch' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>elementsetname</p></td>
<td style="text-align: left;"><p>Metadata subset. One of 'brief',
'summary' or 'full' (default).</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>outputformat</p></td>
<td style="text-align: left;"><p>The metadata encoding to use. One of
'application/xml' or 'application/json'</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>outputschema</p></td>
<td style="text-align: left;"><p>The metadata record schema to use. One
of 'http://www.opengis.net/cat/csw/3.0' or
'http://www.isotc211.org/2005/gmd'</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/xml

-   application/json

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>Metadata record document</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>Metadata record document</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
</tbody>
</table>

### GET Record by Identifier in Native format

`GET /catalogue/csw`

#### Description

Returns a single metadata record by identifier in its native metadata
format.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>service</p></td>
<td style="text-align: left;"><p>The OWS service to use. Fixed to 'CSW'
in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>version</p></td>
<td style="text-align: left;"><p>The OWS service version to use. One of
'3.0.0' or '2.0.2'.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>request</p></td>
<td style="text-align: left;"><p>The OWS request type to use. Fixed to
'GetRepositoryItem' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>id</p></td>
<td style="text-align: left;"><p>The mode flag to use. Fixed to
'opensearch' in this request.</p></td>
<td style="text-align: left;"><p>X</p></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/xml

-   application/json

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>Metadata record document</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>Metadata record document</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>404</p></td>
<td style="text-align: left;"><p>Record not found</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
</tbody>
</table>

## SpatioTemporal Asset Catalog

### Landing page

`GET /catalogue`

#### Description

Returns an overview of the service, endpoints, and contact.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The landing page</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The landing page</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>

### Metadata collection search

`GET /catalogue/search` `POST /catalogue/search`

#### Description

Returns metadata items as a result of query.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>q</p></td>
<td style="text-align: left;"><p>Free-text search terms to
query.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>bbox</p></td>
<td style="text-align: left;"><p>The record bounding bounding box to
filter on. Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>datetime</p></td>
<td style="text-align: left;"><p>The temporal period to filter on.
Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>startindex</p></td>
<td style="text-align: left;"><p>The page/offset on which to apply on
the result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>limit</p></td>
<td style="text-align: left;"><p>The limit on which to apply on the
result set.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>filter</p></td>
<td style="text-align: left;"><p>The CQL TEXT filter to apply when
querying records.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

##### JSON Body Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>bbox</p></td>
<td style="text-align: left;"><p>The record bounding bounding box to
filter on. Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>datetime</p></td>
<td style="text-align: left;"><p>The temporal period to filter on.
Expressed as 'minx,minyx,maxx,maxy' in CRS84.</p></td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>limit</p></td>
<td style="text-align: left;"><p>The limit on which to apply on the
result set.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Metadata collection item

`GET /catalogue/collections/metadata:main/items/{recordId}`

#### Description

Returns a single metadata item.

#### Parameters

##### Query Parameters

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: left;">Description</th>
<th style="text-align: left;">Required</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>f</p></td>
<td style="text-align: left;"><p>The output format of the response. One
of <code>json</code>, <code>xml</code> or <code>html</code>.</p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Content Type

-   application/json

-   application/xml

-   text/html

#### Responses

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 50%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Code</th>
<th style="text-align: left;">Message</th>
<th style="text-align: left;">Datatype</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>application/xml</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>200</p></td>
<td style="text-align: left;"><p>The single record result</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>400</p></td>
<td style="text-align: left;"><p>Bad request</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>404</p></td>
<td style="text-align: left;"><p>Record not found</p></td>
<td style="text-align: left;"><p>application/json</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>404</p></td>
<td style="text-align: left;"><p>Record not found</p></td>
<td style="text-align: left;"><p>text/html</p></td>
</tr>
</tbody>
</table>
