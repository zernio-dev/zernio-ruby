# Zernio::WebhookPayloadCampaignPayoutPayoutSettlement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **String** | The ledger settlement entry. |  |
| **amount_cents** | **Integer** |  |  |
| **external_reference** | **String** |  |  |
| **recorded** | **Boolean** | True when the payout was made outside Zernio and only recorded here; false when Zernio moved the money through the treasury. |  |
| **transfer_id** | **String** | Treasury settlement only: the Zernio transfer that moved the money. The creator receives amountCents in full. | [optional] |
| **fee_cents** | **Integer** | Treasury settlement only: the transfer fee, added on top of amountCents. | [optional] |
| **total_cents** | **Integer** | Treasury settlement only: debited from your balance, amountCents plus feeCents. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignPayoutPayoutSettlement.new(
  entry_id: null,
  amount_cents: null,
  external_reference: null,
  recorded: null,
  transfer_id: null,
  fee_cents: null,
  total_cents: null
)
```

