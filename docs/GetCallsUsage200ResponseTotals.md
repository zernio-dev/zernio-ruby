# Zernio::GetCallsUsage200ResponseTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calls** | **Integer** |  | [optional] |
| **answered** | **Integer** |  | [optional] |
| **minutes** | **Float** |  | [optional] |
| **billable_usd** | **Float** | What Zernio bills for these calls. | [optional] |
| **meta_usd** | **Float** | WhatsApp only: Meta&#39;s per-minute charge, billed by Meta directly to your WABA. Display only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCallsUsage200ResponseTotals.new(
  calls: null,
  answered: null,
  minutes: null,
  billable_usd: null,
  meta_usd: null
)
```

