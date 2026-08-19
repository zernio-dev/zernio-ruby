# Zernio::XArticleBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **text** | **String** |  |  |
| **key** | **String** |  | [optional] |
| **data** | [**XArticleBlockData**](XArticleBlockData.md) |  | [optional] |
| **inline_style_ranges** | [**Array&lt;XArticleInlineStyleRange&gt;**](XArticleInlineStyleRange.md) |  | [optional] |
| **entity_ranges** | [**Array&lt;XArticleEntityRange&gt;**](XArticleEntityRange.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XArticleBlock.new(
  type: null,
  text: null,
  key: null,
  data: null,
  inline_style_ranges: null,
  entity_ranges: null
)
```

