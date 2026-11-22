# Zernio::ListInboxConversations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ListInboxConversations200ResponseDataInner&gt;**](ListInboxConversations200ResponseDataInner.md) |  | [optional] |
| **pagination** | [**ListCalendarEventInstances200ResponsePagination**](ListCalendarEventInstances200ResponsePagination.md) |  | [optional] |
| **sync** | [**ListInboxConversations200ResponseSync**](ListInboxConversations200ResponseSync.md) |  | [optional] |
| **meta** | [**ListInboxConversations200ResponseMeta**](ListInboxConversations200ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200Response.new(
  data: null,
  pagination: null,
  sync: null,
  meta: null
)
```

