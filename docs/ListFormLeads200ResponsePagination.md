# Zernio::ListFormLeads200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** |  | [optional] |
| **cursor** | **String** | Send it as cursor to read the next page. Absent when hasMore is false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListFormLeads200ResponsePagination.new(
  has_more: null,
  cursor: null
)
```

