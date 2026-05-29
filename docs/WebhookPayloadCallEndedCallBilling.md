# Zernio::WebhookPayloadCallEndedCallBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_cost_usd** | **Float** | Meta per-minute charge. Billed by Meta DIRECTLY to your WhatsApp Business Account payment method (your separate Meta invoice). Zernio does NOT charge this. Display only. | [optional] |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **billable_cost_usd** | **Float** | The amount Zernio bills you &#x3D; Telnyx leg + recording. Excludes Meta (billed by Meta directly). | [optional] |
| **total_cost_usd** | **Float** | Full economic cost incl. the Meta portion you pay directly (Meta + Telnyx + recording). Display only, not the Zernio-billed amount. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallEndedCallBilling.new(
  meta_cost_usd: null,
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  billable_cost_usd: null,
  total_cost_usd: null
)
```

