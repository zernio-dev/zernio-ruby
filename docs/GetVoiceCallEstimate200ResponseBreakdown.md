# Zernio::GetVoiceCallEstimate200ResponseBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **transcription_cost_usd** | **Float** |  | [optional] |
| **billable_cost_usd** | **Float** | What Zernio bills for the call. | [optional] |
| **total_cost_usd** | **Float** | Equals billableCostUSD (no separate Meta bill on PSTN); kept for shape parity with the WhatsApp estimate. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetVoiceCallEstimate200ResponseBreakdown.new(
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  transcription_cost_usd: null,
  billable_cost_usd: null,
  total_cost_usd: null
)
```

