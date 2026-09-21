# Zernio::ListAdSets200ResponseAdSetsInnerTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **Object** | LinkedIn &#x60;targetingCriteria.include&#x60;, verbatim (an &#x60;and&#x60; of &#x60;or&#x60; facet clauses). | [optional] |
| **exclude** | **Object** | LinkedIn &#x60;targetingCriteria.exclude&#x60;, verbatim. Absent when the campaign excludes nothing. | [optional] |
| **audience_expansion_enabled** | **Boolean** | LinkedIn audience expansion: whether LinkedIn may also serve to members similar to the criteria. | [optional] |
| **offsite_delivery_enabled** | **Boolean** | Whether the campaign may deliver on the LinkedIn Audience Network, off LinkedIn itself. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdSets200ResponseAdSetsInnerTargeting.new(
  include: null,
  exclude: null,
  audience_expansion_enabled: null,
  offsite_delivery_enabled: null
)
```

