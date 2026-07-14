# Zernio::LinkedInAdsPlatformDataConversationMessagesInnerButtonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **next_message_id** | **String** | Continues the conversation at this message. Exactly one of nextMessageId or url. | [optional] |
| **url** | **String** | Opens this landing page. Exactly one of nextMessageId or url. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataConversationMessagesInnerButtonsInner.new(
  text: null,
  next_message_id: null,
  url: null
)
```

