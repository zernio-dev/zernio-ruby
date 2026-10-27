# Zernio::CursorPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** |  | [optional] |
| **next_cursor** | **String** | Opaque; pass it back as &#x60;cursor&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CursorPagination.new(
  has_more: null,
  next_cursor: null
)
```

