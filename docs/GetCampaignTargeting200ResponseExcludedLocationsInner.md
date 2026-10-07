# Zernio::GetCampaignTargeting200ResponseExcludedLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **geo_target_id** | **String** | Numeric id from Google&#39;s geoTargetConstants/{id}. | [optional] |
| **negative** | **Boolean** | Always true here. | [optional] |
| **name** | **String** |  | [optional] |
| **canonical_name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200ResponseExcludedLocationsInner.new(
  geo_target_id: null,
  negative: null,
  name: null,
  canonical_name: null,
  type: null,
  country_code: null
)
```

