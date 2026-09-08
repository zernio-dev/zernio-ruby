# Zernio::UpdateCampaignTargeting200ResponseLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **geo_target_id** | **String** | Numeric id from Google&#39;s geoTargetConstants/{id}. | [optional] |
| **negative** | **Boolean** | true &#x3D; excluded location. | [optional] |
| **name** | **String** | Google&#39;s geo_target_constant.name; see GET&#39;s description. | [optional] |
| **canonical_name** | **String** | Google&#39;s geo_target_constant.canonical_name; see GET&#39;s description. | [optional] |
| **type** | **String** | Google&#39;s geo_target_constant.target_type; see GET&#39;s description. | [optional] |
| **country_code** | **String** | Google&#39;s geo_target_constant.country_code; see GET&#39;s description. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignTargeting200ResponseLocationsInner.new(
  geo_target_id: null,
  negative: null,
  name: null,
  canonical_name: null,
  type: null,
  country_code: null
)
```

