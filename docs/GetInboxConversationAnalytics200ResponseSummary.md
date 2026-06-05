# Zernio::GetInboxConversationAnalytics200ResponseSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **read** | **Integer** |  | [optional] |
| **failed** | **Integer** |  | [optional] |
| **total_messages** | **Integer** |  | [optional] |
| **first_message_at** | **Time** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationAnalytics200ResponseSummary.new(
  received: null,
  sent: null,
  read: null,
  failed: null,
  total_messages: null,
  first_message_at: null,
  last_message_at: null
)
```

