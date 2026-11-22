# Zernio::PayoutBatchItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator** | [**PayoutBatchItemCreator**](PayoutBatchItemCreator.md) |  |  |
| **amount_cents** | **Integer** | What the creator receives, in full. |  |
| **fee_cents** | **Integer** | Zernio fee on top: 4%, 50 cents minimum per payout. |  |
| **total_cents** | **Integer** | amountCents plus feeCents. |  |
| **status** | **String** | &#x60;skipped&#x60;: payout setup not finished, or the card payment never completed. &#x60;failed&#x60;: Stripe refused the transfer. &#x60;refunded&#x60;: failed or skipped after the card hold; its payout, fee and VAT on the fee went back to the card through a credit note. The amount is payable again in every case. |  |
| **failure_reason** | **String** | Why the item was not paid, in plain words. |  |
| **transfer_id** | **String** | The treasury transfer that paid this item. |  |
| **refunded_cents** | **Integer** | What went back to the card for a &#x60;refunded&#x60; item: payout, fee and VAT on the fee. Null otherwise. |  |

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
  transfer_id: null,
  refunded_cents: null
)
```

