# Zernio::GetInboxPostComments200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** |  | [optional] |
| **cursor** | **String** | Only present when hasMore is true. Absent on the last page, so treat its absence as the end of the thread. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200ResponsePagination.new(
  has_more: null,
  cursor: null
)
```

