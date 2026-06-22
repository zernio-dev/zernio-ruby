# Zernio::CreateLeadFormRequestContextCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Headline / title of the intro card. | [optional] |
| **content** | **Array&lt;String&gt;** | Body text lines shown on the intro card. | [optional] |
| **style** | **String** | Visual layout of the intro card. | [optional] |
| **button_text** | **String** | CTA button label on the intro card. | [optional] |
| **cover_photo** | **String** | Image hash of the cover photo (obtain from the Meta Ad Images API). Omit to show no image. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormRequestContextCard.new(
  title: null,
  content: null,
  style: null,
  button_text: null,
  cover_photo: null
)
```

