# Zernio::PayoutBatchItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator** | [**PayoutBatchItemCreator**](PayoutBatchItemCreator.md) |  |  |
| **amount_cents** | **Integer** | What the creator receives, in full. |  |
| **fee_cents** | **Integer** | Zernio fee on top: 4% with a 50 cent minimum. |  |
| **total_cents** | **Integer** | amountCents plus feeCents. |  |
| **status** | **String** | &#x60;skipped&#x60;: not paid because payout setup was not finished, or the card payment never completed; the amount is payable again. &#x60;failed&#x60;: Stripe refused the transfer; the amount is payable again. |  |
| **failure_reason** | **String** | Why the item was not paid, in plain words. |  |
| **transfer_id** | **String** | The treasury transfer that paid this item. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PayoutBatchItem.new(
  id: null,
  participant_id: null,
  creator: null,
  amount_cents: null,
  fee_cents: null,
  total_cents: null,
  status: null,
  failure_reason: null,
  transfer_id: null
)
```

