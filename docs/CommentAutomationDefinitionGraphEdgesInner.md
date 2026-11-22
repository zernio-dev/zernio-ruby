# Zernio::CommentAutomationDefinitionGraphEdgesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Derived from the other fields. | [optional] |
| **source** | **String** |  |  |
| **target** | **String** |  |  |
| **source_handle** | **String** | The outcome it follows, such as &#x60;sent&#x60;, &#x60;tapped&#x60; or a follower rule. Null follows any outcome. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationDefinitionGraphEdgesInner.new(
  id: null,
  source: null,
  target: null,
  source_handle: null
)
```

