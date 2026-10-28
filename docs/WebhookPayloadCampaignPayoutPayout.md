# Zernio::WebhookPayloadCampaignPayoutPayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payable_cents** | **Integer** | The participant&#39;s payable balance after this event. |  |
| **settlement** | [**WebhookPayloadCampaignPayoutPayoutSettlement**](WebhookPayloadCampaignPayoutPayoutSettlement.md) |  | [optional] |
| **failure** | [**WebhookPayloadCampaignPayoutPayoutFailure**](WebhookPayloadCampaignPayoutPayoutFailure.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignPayoutPayout.new(
  payable_cents: null,
  settlement: null,
  failure: null
)
```

