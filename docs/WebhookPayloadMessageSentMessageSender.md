# Zernio::WebhookPayloadMessageSentMessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **contact_id** | **String** | Always omitted on this event: the sender is the business, not a contact. Use conversation.contactId to join back to the CRM Contact. | [optional] |
| **name** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSentMessageSender.new(
  id: null,
  contact_id: null,
  name: null,
  username: null,
  picture: null
)
```

