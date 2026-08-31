# Zernio::WebhookPayloadMessageSentMessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Zernio account id of the connected account that sent the message, not a contact id. |  |
| **contact_id** | **String** | Always omitted on this event: the sender is the business, not a contact. Use conversation.contactId to join back to the CRM Contact. | [optional] |
| **name** | **String** | Display name of your connected account. | [optional] |
| **username** | **String** | Username of your connected account. | [optional] |
| **picture** | **String** | Profile picture of your connected account. | [optional] |

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

