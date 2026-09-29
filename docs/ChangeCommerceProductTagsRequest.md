# Zernio::ChangeCommerceProductTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **product_ids** | **Array&lt;String&gt;** |  |  |
| **add** | **Array&lt;String&gt;** |  | [optional] |
| **remove** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ChangeCommerceProductTagsRequest.new(
  account_id: null,
  product_ids: null,
  add: null,
  remove: null
)
```

