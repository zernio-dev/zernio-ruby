# Zernio::SendInboxMessageRequestTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Template type. Required for Instagram/Facebook generic templates; ignored on WhatsApp. | [optional] |
| **image_aspect_ratio** | **String** | Facebook only. Aspect ratio Messenger renders element images at: horizontal (1.91:1, default) or square (1:1). A 400 on Instagram. | [optional] |
| **elements** | [**Array&lt;SendInboxMessageRequestTemplateElementsInner&gt;**](SendInboxMessageRequestTemplateElementsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestTemplate.new(
  type: null,
  image_aspect_ratio: null,
  elements: null
)
```

