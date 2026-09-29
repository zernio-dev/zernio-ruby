# Zernio::CommerceInventoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  | [optional] |
| **variant_id** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **tracked** | **Boolean** | False when the platform does not count stock for the variant. | [optional] |
| **levels** | [**Array&lt;CommerceInventoryItemLevelsInner&gt;**](CommerceInventoryItemLevelsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceInventoryItem.new(
  product_id: null,
  variant_id: null,
  sku: null,
  tracked: null,
  levels: null
)
```

