# Zernio::XArticleBlockData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cashtags** | [**Array&lt;XArticleTextRange&gt;**](XArticleTextRange.md) |  | [optional] |
| **hashtags** | [**Array&lt;XArticleTextRange&gt;**](XArticleTextRange.md) |  | [optional] |
| **mentions** | [**Array&lt;XArticleTextRange&gt;**](XArticleTextRange.md) |  | [optional] |
| **urls** | [**Array&lt;XArticleTextRange&gt;**](XArticleTextRange.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XArticleBlockData.new(
  cashtags: null,
  hashtags: null,
  mentions: null,
  urls: null
)
```

