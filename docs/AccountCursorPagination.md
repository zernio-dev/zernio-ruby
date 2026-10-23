# Zernio::AccountCursorPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  |  |
| **next_cursor** | **String** | Opaque cursor for the next page; pass it back as &#x60;cursor&#x60;. Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountCursorPagination.new(
  limit: null,
  next_cursor: null
)
```

