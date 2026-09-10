# Zernio::CreateInboxConversationRequestTemplateCardsInnerButtonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Zero-based position of the button within the card&#39;s buttons. |  |
| **sub_type** | **String** | The button kind, which decides how the value is sent. |  |
| **value** | **String** | The value to send (quick_reply payload, or the URL dynamic suffix). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequestTemplateCardsInnerButtonsInner.new(
  index: null,
  sub_type: null,
  value: null
)
```

