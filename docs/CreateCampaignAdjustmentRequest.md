# Zernio::CreateCampaignAdjustmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** |  |  |
| **amount_cents** | **Integer** | Non-zero. Positive credits, negative claws back. |  |
| **cause** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCampaignAdjustmentRequest.new(
  participant_id: null,
  amount_cents: null,
  cause: null
)
```

