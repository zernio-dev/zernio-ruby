# Zernio::ListProducts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) |  | [optional] |
| **next_cursor** | **String** | Cursor for the next page; null when there are no more pages. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListProducts200Response.new(
  platform: null,
  products: null,
  next_cursor: null
)
```

