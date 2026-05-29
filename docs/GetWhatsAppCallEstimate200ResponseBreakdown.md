# Zernio::GetWhatsAppCallEstimate200ResponseBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_minutes** | **Integer** |  | [optional] |
| **meta_cost_usd** | **Float** | Estimated Meta per-minute charge, billed by Meta directly to your WABA. Display only; not billed by Zernio. | [optional] |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **billable_cost_usd** | **Float** | Estimated amount Zernio bills you &#x3D; Telnyx leg + recording (excludes Meta). | [optional] |
| **total_cost_usd** | **Float** | Estimated full cost incl. the Meta portion you pay directly. Display only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCallEstimate200ResponseBreakdown.new(
  meta_minutes: null,
  meta_cost_usd: null,
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  billable_cost_usd: null,
  total_cost_usd: null
)
```

