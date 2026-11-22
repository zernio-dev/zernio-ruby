# Zernio::CommerceRefundRequestLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_item_id** | **String** | A line item id from the order (&#x60;lineItems[].id&#x60;). |  |
| **quantity** | **Integer** |  |  |
| **restock** | **Boolean** | Put the units back in stock. Unshipped units are cancelled and shipped ones count as returned. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceRefundRequestLineItemsInner.new(
  line_item_id: null,
  quantity: null,
  restock: null
)
```

