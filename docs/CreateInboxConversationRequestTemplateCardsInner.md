# Zernio::CreateInboxConversationRequestTemplateCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_index** | **Integer** | The card&#39;s card_index in the approved template. |  |
| **params** | **Array&lt;String&gt;** | Values for this card&#39;s own body variables, in the card&#39;s own {{1}}, {{2}}, ... order (or named-slot order of appearance). | [optional] |
| **header_media** | [**CreateInboxConversationRequestTemplateCardsInnerHeaderMedia**](CreateInboxConversationRequestTemplateCardsInnerHeaderMedia.md) |  | [optional] |
| **buttons** | [**Array&lt;CreateInboxConversationRequestTemplateCardsInnerButtonsInner&gt;**](CreateInboxConversationRequestTemplateCardsInnerButtonsInner.md) | Values for this card&#39;s own buttons, each addressed by the button&#39;s index within the card. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequestTemplateCardsInner.new(
  card_index: null,
  params: null,
  header_media: null,
  buttons: null
)
```

