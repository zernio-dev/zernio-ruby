# Zernio::PrepareMediaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public http(s) URL of the image or video. |  |
| **target** | **String** | Where the media will be published. &#x60;twitter&#x60;, &#x60;googlebusiness&#x60; and &#x60;youtube_thumbnail&#x60; take images only; &#x60;facebook_reel&#x60; takes videos only. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PrepareMediaRequest.new(
  url: https://example.com/clip.mov,
  target: facebook_story
)
```

