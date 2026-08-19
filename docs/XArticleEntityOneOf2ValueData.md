# Zernio::XArticleEntityOneOf2ValueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public image, GIF, or MP4 URL. Zernio uploads it to X and replaces it with native media metadata. Caller-supplied media IDs are rejected. |  |
| **caption** | **String** |  | [optional] |
| **alt_text** | **String** | Supported for image and GIF URLs; rejected for MP4 media. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XArticleEntityOneOf2ValueData.new(
  url: null,
  caption: null,
  alt_text: null
)
```

