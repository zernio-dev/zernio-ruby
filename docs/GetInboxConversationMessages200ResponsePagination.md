# Zernio::GetInboxConversationMessages200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | Whether more messages are available beyond this page. | [optional] |
| **next_cursor** | **String** | Opaque cursor to fetch the next page. &#x60;null&#x60; on the last page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponsePagination.new(
  has_more: null,
  next_cursor: null
)
```

