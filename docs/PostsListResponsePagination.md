# Zernio::PostsListResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **pages** | **Integer** |  | [optional] |
| **next_cursor** | **String** | Cursor for the next page in the same sortBy order. Send it back as &#x60;cursor&#x60;. Null on the last page, and always null for &#x60;sortBy&#x3D;status&#x60; or &#x60;sortBy&#x3D;platform&#x60;. Absent for &#x60;source&#x3D;external&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostsListResponsePagination.new(
  page: null,
  limit: null,
  total: null,
  pages: null,
  next_cursor: null
)
```

