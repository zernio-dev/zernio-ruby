# Zernio::CampaignSettlement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **String** | The ledger settlement entry. |  |
| **participant_id** | **String** |  |  |
| **amount_cents** | **Integer** |  |  |
| **external_reference** | **String** |  |  |
| **payable_cents** | **Integer** | Payable balance left after this settlement. |  |
| **settled_at** | **Time** |  |  |
| **transfer_id** | **String** | Treasury settlement only: the Zernio transfer that moved the money. The creator receives amountCents in full. | [optional] |
| **fee_cents** | **Integer** | Treasury settlement only: the transfer fee, added on top of amountCents. | [optional] |
| **total_cents** | **Integer** | Treasury settlement only: debited from your balance, amountCents plus feeCents. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignSettlement.new(
  entry_id: null,
  participant_id: null,
  amount_cents: null,
  external_reference: null,
  payable_cents: null,
  settled_at: null,
  transfer_id: null,
  fee_cents: null,
  total_cents: null
)
```

