# Zernio::GetInboxUnreadCount200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unread_conversations** | **Integer** | Conversations with at least one unread incoming message, capped at 1000. | [optional] |
| **capped** | **Boolean** | true when the count reached the cap: there are at least 1000. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxUnreadCount200ResponseData.new(
  unread_conversations: null,
  capped: null
)
```

