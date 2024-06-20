# Introduction

The _Resource Discovery Building Block_ is designed to enable the discovery of resources in the system, by providing a catalogue that maintains metadata for the resources held within a platform, and also supports platform federation by maintaining records to resources in other platforms.

In supporting the Find capability as one of the FAIR principles, the Resource Discovery Building Block provides discovery for not only data (e.g., datasets, data cube, virtual data cube), but also workflows, job details, Jupyter Notebooks, Executable Services, Platform Services, Web Applications, Documentation, etc.


## About the Resource Discovery Building Block

Resource discovery is made possible for any resource type and any resource granularity.  This is made possible by facilitating discovery for and within resources.  For example, a dataset or collection resource could be comprised of 10 million granules.  A user needs to be able to perform a "first order" search for the existence of the dataset, as well as (upon evaluation) a "second order" search for granules within that dataset.  A first order search in this regard then needs to be able to link to granules.

The _Resource Discovery_ Building Block functions as follows:

- **Resource Discovery API**: this API provides resource discovery using core search API standards
- **Dataset granule discovery API**: this API provides dataset granule level discovery
- **Transactional support**: all discovery APIs provide the ability to create, replace, update and delete resources
- **Federation support**: all discovery APIs provide the ability to search for resources from other platforms at runtime
- **Notification support**: all discovery APIs provide the ability to send event driven notifications upon updates to their underlying metadata repositories, as well as subscription to events from other components (e.g., registration of metadata from an output of a processing job)
- **Integration with authentication and authorization**: all discovery APIs integrates with Identify and Access Management (IAM) servvices to secure protected resources.
- ** Administration User Interface**: TODO

## Capabilities

The _Resource Discovery Building Block_ provides the following capabilties:

The relevant use cases for the Resource Discovery Building Block focus on the discovery of resources from local and distributed platforms.

It comprises the following key components, each addressing specific aspects of processing in EO:

- **Resource Catalogue**: provides core resource discovery of local and remote resources
- **Dataset Granule Catalogue**: provides dataset granule discovery of local and remote dataset granules
- **API Gateway**: TODO
