# Zernio::ScheduledEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The &#x60;scheduleId&#x60;. | [optional] |
| **account_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **hold_as_draft** | **Boolean** | True when the email waits as a draft in the mailbox and is sent as that draft stands at &#x60;scheduledFor&#x60;. | [optional] |
| **draft_id** | **String** | The mailbox draft of a &#x60;holdAsDraft&#x60; send: the Gmail draft id, or the Outlook message id. &#x60;null&#x60; otherwise. | [optional] |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **subject** | **String** | Empty on a reply that keeps the thread subject. &#x60;null&#x60; once the send finishes under zero content retention. | [optional] |
| **content_not_retained** | **Boolean** | Present and &#x60;true&#x60; when the email content was dropped under [zero content retention](/security/zero-content-retention). | [optional] |
| **reply_to_message_id** | **String** | Set when scheduled through the reply route. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **sent_at** | **Time** |  | [optional] |
| **sent_message_id** | **String** | Provider id of the sent message once &#x60;status&#x60; is sent. | [optional] |
| **sent_thread_id** | **String** |  | [optional] |
| **error** | **String** | Why a failed send did not leave. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ScheduledEmail.new(
  id: null,
  account_id: null,
  status: null,
  scheduled_for: null,
  hold_as_draft: null,
  draft_id: null,
  to: null,
  subject: null,
  content_not_retained: null,
  reply_to_message_id: null,
  metadata: null,
  sent_at: null,
  sent_message_id: null,
  sent_thread_id: null,
  error: null,
  created_at: null
)
```

