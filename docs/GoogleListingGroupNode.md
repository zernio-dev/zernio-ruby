# Zernio::GoogleListingGroupNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension** | [**GoogleListingGroupDimension**](GoogleListingGroupDimension.md) |  |  |
| **excluded** | **Boolean** | Leaf only. true excludes these products. | [optional] |
| **children** | [**Array&lt;GoogleListingGroupNode&gt;**](GoogleListingGroupNode.md) | Makes the node a subdivision. Children share one dimension (and level or index) and include exactly one everything-else node. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleListingGroupNode.new(
  dimension: null,
  excluded: null,
  children: null
)
```

