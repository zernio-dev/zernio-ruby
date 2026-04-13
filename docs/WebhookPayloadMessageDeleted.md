# Late::WebhookPayloadMessageDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**WebhookPayloadMessageMessage**](WebhookPayloadMessageMessage.md) |  |  |
| **deleted_at** | **Time** |  |  |
| **conversation** | [**WebhookPayloadMessageConversation**](WebhookPayloadMessageConversation.md) |  |  |
| **account** | [**WebhookPayloadMessageAccount**](WebhookPayloadMessageAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadMessageDeleted.new(
  id: null,
  event: null,
  message: null,
  deleted_at: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

