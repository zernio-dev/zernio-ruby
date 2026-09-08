# Zernio::GetCampaignTargeting200ResponseLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **geo_target_id** | **String** | Numeric id from Google&#39;s geoTargetConstants/{id}. | [optional] |
| **negative** | **Boolean** | true &#x3D; excluded location. | [optional] |
| **name** | **String** | Google&#39;s geo_target_constant.name, e.g. \&quot;United States\&quot;; null when the id could not be resolved. | [optional] |
| **canonical_name** | **String** | Google&#39;s geo_target_constant.canonical_name, e.g. \&quot;California, United States\&quot;; null when the id could not be resolved. | [optional] |
| **type** | **String** | Google&#39;s geo_target_constant.target_type, e.g. \&quot;Country\&quot;, \&quot;Region\&quot;, \&quot;City\&quot;; null when the id could not be resolved. | [optional] |
| **country_code** | **String** | Google&#39;s geo_target_constant.country_code, an ISO 3166-1 alpha-2 code; null when the id could not be resolved. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200ResponseLocationsInner.new(
  geo_target_id: null,
  negative: null,
  name: null,
  canonical_name: null,
  type: null,
  country_code: null
)
```

