# Zernio::WebhookPayloadMessageSentMetadataTemplateButtonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Lowercased button type, such as quick_reply, url, phone_number, copy_code, otp or flow. Meta adds types over time. |  |
| **text** | **String** | Button label. | [optional] |
| **url** | **String** | URL buttons only. The button URL, with its variable filled in when the send gave a value. | [optional] |
| **phone_number** | **String** | Phone number buttons only. The number the button dials. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSentMetadataTemplateButtonsInner.new(
  type: null,
  text: null,
  url: null,
  phone_number: null
)
```

