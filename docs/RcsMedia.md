# Zernio::RcsMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public image or video URL. |  |
| **thumbnail_url** | **String** | Max 100 KB. | [optional] |
| **height** | **String** |  | [optional][default to &#39;MEDIUM&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsMedia.new(
  url: null,
  thumbnail_url: null,
  height: null
)
```

