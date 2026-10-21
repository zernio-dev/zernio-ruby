# Zernio::TikTokReviewRejectionContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | TikTok &#x60;content_type&#x60;, verbatim (ModeString, ModeImage, ModeVideo, ModeMusic, LandingPage, ...). | [optional] |
| **text** | **String** |  | [optional] |
| **image_id** | **String** |  | [optional] |
| **video_id** | **String** |  | [optional] |
| **music_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TikTokReviewRejectionContent.new(
  type: null,
  text: null,
  image_id: null,
  video_id: null,
  music_id: null
)
```

