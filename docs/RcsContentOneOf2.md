# Zernio::RcsContentOneOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **card** | [**RcsCard**](RcsCard.md) |  |  |
| **orientation** | **String** |  | [optional][default to &#39;VERTICAL&#39;] |
| **thumbnail_alignment** | **String** |  | [optional][default to &#39;LEFT&#39;] |
| **suggestions** | [**Array&lt;RcsSuggestion&gt;**](RcsSuggestion.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsContentOneOf2.new(
  type: null,
  card: null,
  orientation: null,
  thumbnail_alignment: null,
  suggestions: null
)
```

