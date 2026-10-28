# Zernio::CampaignAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **amount_cents** | **Integer** | Positive credits the participant, negative claws back. |  |
| **cause** | **String** |  |  |
| **actor** | **String** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignAdjustment.new(
  id: null,
  kind: null,
  participant_id: null,
  amount_cents: null,
  cause: null,
  actor: null,
  created_at: null
)
```

