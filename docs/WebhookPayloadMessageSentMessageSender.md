# Zernio::WebhookPayloadMessageSentMessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **contact_id** | **String** | Zernio CRM Contact id for this sender, when one exists. | [optional] |
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

