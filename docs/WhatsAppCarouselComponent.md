# Zernio::WhatsAppCarouselComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **cards** | [**Array&lt;WhatsAppCarouselComponentCardsInner&gt;**](WhatsAppCarouselComponentCardsInner.md) | 2-10 cards. Meta requires all cards to share the same component structure; a mismatch surfaces as a rejected_reason. MARKETING category only. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppCarouselComponent.new(
  type: null,
  cards: null
)
```

