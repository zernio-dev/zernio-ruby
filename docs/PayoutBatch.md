# Zernio::PayoutBatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **status** | **String** | &#x60;awaiting_payment&#x60; until the card payment completes; &#x60;paying&#x60; while transfers go out; then &#x60;paid&#x60;, &#x60;partially_failed&#x60; (some items failed or were skipped), &#x60;failed&#x60; (none paid) or &#x60;expired&#x60; (the Checkout expired unpaid, every amount is payable again). |  |
| **method** | **String** |  |  |
| **amount_cents** | **Integer** | Total the creators receive. |  |
| **fee_cents** | **Integer** | Total Zernio fee. |  |
| **total_cents** | **Integer** | The card charge: amountCents plus feeCents. |  |
| **items** | [**Array&lt;PayoutBatchItem&gt;**](PayoutBatchItem.md) |  |  |
| **paid_at** | **Time** |  |  |
| **finished_at** | **Time** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PayoutBatch.new(
  id: null,
  campaign_id: null,
  status: null,
  method: null,
  amount_cents: null,
  fee_cents: null,
  total_cents: null,
  items: null,
  paid_at: null,
  finished_at: null,
  created_at: null
)
```

