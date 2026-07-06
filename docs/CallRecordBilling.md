# Zernio::CallRecordBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_minutes** | **Float** |  | [optional] |
| **telnyx_seconds** | **Float** |  | [optional] |
| **transcription_seconds** | **Float** |  | [optional] |
| **transcription_cost_usd** | **Float** |  | [optional] |
| **meta_cost_usd** | **Float** | WhatsApp channel only. Meta per-minute charge, billed by Meta directly to your WABA. Display only; not billed by Zernio. | [optional] |
| **telnyx_cost_usd** | **Float** |  | [optional] |
| **recording_cost_usd** | **Float** |  | [optional] |
| **billable_cost_usd** | **Float** | Amount Zernio bills you &#x3D; telephony leg + recording + transcription (excludes any Meta portion). | [optional] |
| **total_cost_usd** | **Float** | Full cost incl. any Meta portion you pay directly. Display only. | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CallRecordBilling.new(
  meta_minutes: null,
  telnyx_seconds: null,
  transcription_seconds: null,
  transcription_cost_usd: null,
  meta_cost_usd: null,
  telnyx_cost_usd: null,
  recording_cost_usd: null,
  billable_cost_usd: null,
  total_cost_usd: null,
  currency: null
)
```

