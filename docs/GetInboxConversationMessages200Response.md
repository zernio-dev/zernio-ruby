# Zernio::GetInboxConversationMessages200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **pagination** | [**GetInboxConversationMessages200ResponsePagination**](GetInboxConversationMessages200ResponsePagination.md) |  | [optional] |
| **sort_order_applied** | **String** | Sort order actually applied to the returned page. May differ from the requested &#x60;sortOrder&#x60; for Twitter, Facebook and Bluesky (always &#x60;desc&#x60; regardless of request).  | [optional] |
| **messages** | [**Array&lt;GetInboxConversationMessages200ResponseMessagesInner&gt;**](GetInboxConversationMessages200ResponseMessagesInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200Response.new(
  status: null,
  pagination: null,
  sort_order_applied: null,
  messages: null,
  last_updated: null
)
```

