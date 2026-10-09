# Zernio::WebhookPayloadMessageEdited

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **edit_history** | [**Array&lt;InboxMessageEditHistoryEntry&gt;**](InboxMessageEditHistoryEntry.md) | Prior versions of the message, oldest first. |  |
| **edit_count** | **Integer** | Total number of edits applied to this message. |  |
| **edited_at** | **Time** | When the most recent edit happened. |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageEdited.new(
  test: null,
  id: null,
  event: null,
  message: null,
  edit_history: null,
  edit_count: null,
  edited_at: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

