# Zernio::CommerceRefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **line_items** | [**Array&lt;CommerceRefundRequestLineItemsInner&gt;**](CommerceRefundRequestLineItemsInner.md) |  | [optional] |
| **shipping** | [**CommerceRefundRequestShipping**](CommerceRefundRequestShipping.md) |  | [optional] |
| **amount** | **String** | Refund this much money instead of what the lines and shipping are worth, for a goodwill refund or a partial one. Taken from the order&#39;s payments in order, up to what each can still refund. | [optional] |
| **currency** | **String** | The currency your amounts are in. Refused (400) unless it is the one the buyer paid in, which every refund amount uses. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceRefundRequest.new(
  account_id: null,
  line_items: null,
  shipping: null,
  amount: 10.00,
  currency: EUR
)
```

