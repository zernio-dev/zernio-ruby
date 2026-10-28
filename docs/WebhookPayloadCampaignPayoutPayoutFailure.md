# Zernio::WebhookPayloadCampaignPayoutPayoutFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_id** | **String** | The Zernio transfer that did not go through. |  |
| **amount_cents** | **Integer** | The payout amount that did not reach the creator. It is returned to payable, minus any amount a rejection made while the payout was in flight claws back to the campaign budget; payableCents is the balance after both. |  |
| **reason** | **String** | returned: Stripe refused the transfer. stale: it could not be confirmed with Stripe within 24 hours. reversed: Stripe reversed it after it was sent; the settlement is undone. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignPayoutPayoutFailure.new(
  transfer_id: null,
  amount_cents: null,
  reason: null
)
```

