# Zernio::WhatsAppCarouselComponentCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **components** | [**Array&lt;WhatsAppCarouselCardComponent&gt;**](WhatsAppCarouselCardComponent.md) | Per-card components. Each card carries its own media header + optional body + up to 2 buttons. Footer and nested carousel are not allowed inside cards. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppCarouselComponentCardsInner.new(
  components: null
)
```

