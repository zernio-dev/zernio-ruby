# Zernio::CommentAutomationTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **image_aspect_ratio** | **String** | Facebook only. How Messenger renders each element imageUrl: horizontal (1.91:1, the default) or square (1:1). Instagram has no such setting, so an Instagram automation carrying it is a 400. | [optional] |
| **elements** | [**Array&lt;CommentAutomationTemplateElement&gt;**](CommentAutomationTemplateElement.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationTemplate.new(
  type: null,
  image_aspect_ratio: null,
  elements: null
)
```

