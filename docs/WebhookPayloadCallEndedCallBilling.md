# Zernio::WebhookPayloadCallEndedCallBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_cost_usd** | **Float** |  | [optional] |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **total_cost_usd** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallEndedCallBilling.new(
  meta_cost_usd: null,
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  total_cost_usd: null
)
```

