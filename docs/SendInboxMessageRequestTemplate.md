# Zernio::SendInboxMessageRequestTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Template type. Required for Instagram/Facebook generic templates; ignored on WhatsApp. | [optional] |
| **elements** | [**Array&lt;SendInboxMessageRequestTemplateElementsInner&gt;**](SendInboxMessageRequestTemplateElementsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestTemplate.new(
  type: null,
  elements: null
)
```

