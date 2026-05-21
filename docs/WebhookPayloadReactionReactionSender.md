# Zernio::WebhookPayloadReactionReactionSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **phone_number** | **String** | WhatsApp only. Sender&#39;s phone number in E.164 format (with leading &#x60;+&#x60;), when available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReactionReactionSender.new(
  id: null,
  name: null,
  username: null,
  picture: null,
  phone_number: null
)
```

