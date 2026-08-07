# Zernio::CommentAutomationTemplateElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Card headline (80 chars max). Also used as the Inbox preview for the sent DM. |  |
| **subtitle** | **String** | Card description, e.g. the price or a short pitch (80 chars max). | [optional] |
| **image_url** | **String** | Publicly reachable http(s) image rendered large above the card. | [optional] |
| **buttons** | [**Array&lt;CommentAutomationTemplateElementButtonsInner&gt;**](CommentAutomationTemplateElementButtonsInner.md) | Up to 3 card buttons. A generic template has NO phone button, on either platform. &#x60;url&#x60; buttons are click-tracked when linkTracking is on. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationTemplateElement.new(
  title: null,
  subtitle: null,
  image_url: null,
  buttons: null
)
```

