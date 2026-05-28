# Zernio::GetWhatsAppCallEstimate200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_country** | **String** |  | [optional] |
| **per_minute_usd** | **Float** |  | [optional] |
| **breakdown** | [**GetWhatsAppCallEstimate200ResponseBreakdown**](GetWhatsAppCallEstimate200ResponseBreakdown.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCallEstimate200Response.new(
  destination_country: null,
  per_minute_usd: null,
  breakdown: null
)
```

