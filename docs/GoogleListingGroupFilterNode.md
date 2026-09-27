# Zernio::GoogleListingGroupFilterNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **resource_name** | **String** | customers/{customerId}/assetGroupListingGroupFilters/{assetGroupId}~{filterId} |  |
| **parent_resource_name** | **String** | Null for the root node. |  |
| **type** | **String** |  |  |
| **listing_source** | **String** |  |  |
| **dimension** | **Object** | Google&#39;s case value for the node, such as { productBrand: { value: &#39;Acme&#39; } }. A dimension with no value is the everything-else node. Null for the root. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleListingGroupFilterNode.new(
  id: null,
  resource_name: null,
  parent_resource_name: null,
  type: null,
  listing_source: null,
  dimension: null
)
```

