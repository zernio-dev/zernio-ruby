# Zernio::GetAccountPosts200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | True when older posts remain. |  |
| **next_cursor** | **String** | Send back as &#x60;cursor&#x60; for the next page; null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountPosts200ResponsePagination.new(
  has_more: null,
  next_cursor: null
)
```

