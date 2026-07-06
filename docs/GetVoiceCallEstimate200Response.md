# Zernio::GetVoiceCallEstimate200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_country** | **String** |  | [optional] |
| **minutes** | **Integer** |  | [optional] |
| **per_minute_usd** | **Float** | Billable cost per minute for the requested options. | [optional] |
| **breakdown** | [**GetVoiceCallEstimate200ResponseBreakdown**](GetVoiceCallEstimate200ResponseBreakdown.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetVoiceCallEstimate200Response.new(
  destination_country: null,
  minutes: null,
  per_minute_usd: null,
  breakdown: null
)
```

