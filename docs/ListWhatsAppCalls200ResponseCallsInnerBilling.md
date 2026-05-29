# Zernio::ListWhatsAppCalls200ResponseCallsInnerBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_cost_usd** | **Float** | Meta per-minute charge, billed by Meta directly to your WABA. Display only; not billed by Zernio. | [optional] |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **billable_cost_usd** | **Float** | Amount Zernio bills you &#x3D; Telnyx leg + recording (excludes Meta). | [optional] |
| **total_cost_usd** | **Float** | Full cost incl. the Meta portion you pay directly. Display only. | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppCalls200ResponseCallsInnerBilling.new(
  meta_cost_usd: null,
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  billable_cost_usd: null,
  total_cost_usd: null,
  currency: null
)
```

