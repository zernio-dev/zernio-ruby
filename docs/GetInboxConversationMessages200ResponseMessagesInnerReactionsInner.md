# Zernio::GetInboxConversationMessages200ResponseMessagesInnerReactionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emoji** | **String** |  | [optional] |
| **from_me** | **Boolean** | true if the connected account reacted, false if the contact did. | [optional] |
| **reacted_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponseMessagesInnerReactionsInner.new(
  emoji: null,
  from_me: null,
  reacted_at: null
)
```

