# Zernio::CustomConversionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **custom_conversion_id** | **String** | Drops straight into promotedObject.customConversionId on POST /v1/ads/create. | [optional] |
| **reused** | **Boolean** | True when an existing conversion matched name + pixelId; the response is then a 200. | [optional] |
| **custom_conversion** | [**CustomConversion**](CustomConversion.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CustomConversionResult.new(
  ad_account_id: null,
  custom_conversion_id: null,
  reused: null,
  custom_conversion: null
)
```

