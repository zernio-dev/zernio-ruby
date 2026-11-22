# Zernio::UsageAttributionGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **by_product** | [**UsageAttributionSliceByProduct**](UsageAttributionSliceByProduct.md) |  | [optional] |
| **total_usd** | **Float** |  | [optional] |
| **key** | **String** | Profile id or account id, per &#x60;groupBy&#x60;. |  |
| **profile_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the profile id (same as &#x60;key&#x60;). | [optional] |
| **external_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the externalId set on the profile, null when it has none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageAttributionGroup.new(
  by_product: null,
  total_usd: null,
  key: null,
  profile_id: null,
  external_id: null
)
```

