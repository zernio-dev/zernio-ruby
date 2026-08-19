# Zernio::XArticle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **content_state** | [**XArticleContentState**](XArticleContentState.md) |  |  |
| **mode** | **String** | Publish creates an X Article draft and then publishes it. Draft stops after draft creation and returns the X draft ID without a public URL. | [optional][default to &#39;publish&#39;] |
| **cover** | [**XArticleCover**](XArticleCover.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XArticle.new(
  title: null,
  content_state: null,
  mode: null,
  cover: null
)
```

