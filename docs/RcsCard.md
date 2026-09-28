# Zernio::RcsCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **media** | [**RcsMedia**](RcsMedia.md) |  | [optional] |
| **suggestions** | [**Array&lt;RcsSuggestion&gt;**](RcsSuggestion.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsCard.new(
  title: null,
  description: null,
  media: null,
  suggestions: null
)
```

