# Zernio::GetCampaignTargeting200ResponseLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **geo_target_id** | **String** | Numeric id from Google&#39;s geoTargetConstants/{id}. | [optional] |
| **negative** | **Boolean** | true &#x3D; excluded location. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200ResponseLocationsInner.new(
  geo_target_id: null,
  negative: null
)
```

