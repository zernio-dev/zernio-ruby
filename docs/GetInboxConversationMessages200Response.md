# Zernio::GetInboxConversationMessages200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **messages** | [**Array&lt;GetInboxConversationMessages200ResponseMessagesInner&gt;**](GetInboxConversationMessages200ResponseMessagesInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200Response.new(
  status: null,
  messages: null,
  last_updated: null
)
```

