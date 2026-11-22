# Zernio::ListWorkflowExecutions200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **skip** | **Integer** |  | [optional] |
| **has_more** | **Boolean** |  | [optional] |
| **next_cursor** | **String** | Pass as cursor for the next page; null on a short last page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowExecutions200ResponsePagination.new(
  total: null,
  limit: null,
  skip: null,
  has_more: null,
  next_cursor: null
)
```

