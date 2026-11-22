# Zernio::CreateCommerceOrderEditRequestQuantitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_item_id** | **String** | A line item id from the order. |  |
| **quantity** | **Integer** | The new quantity; 0 removes the line. |  |
| **restock** | **Boolean** | Put removed units back in stock. | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceOrderEditRequestQuantitiesInner.new(
  line_item_id: null,
  quantity: null,
  restock: null
)
```

