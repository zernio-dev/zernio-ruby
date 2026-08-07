# Zernio::CommentAutomationTemplateElementButtonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **title** | **String** |  |  |
| **url** | **String** | Target URL (required when type is url) | [optional] |
| **payload** | **String** | Postback payload delivered via the messaging_postbacks webhook (required when type is postback) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationTemplateElementButtonsInner.new(
  type: null,
  title: null,
  url: null,
  payload: null
)
```

