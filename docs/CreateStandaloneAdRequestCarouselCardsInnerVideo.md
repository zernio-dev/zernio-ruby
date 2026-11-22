# Zernio::CreateStandaloneAdRequestCarouselCardsInnerVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Video file uploaded to the ad account. | [optional] |
| **id** | **String** | A video already on the ad account (the videoId of an earlier upload). Reused without re-uploading. | [optional] |
| **thumbnail_url** | **String** | The card&#39;s poster. Defaults to Meta&#39;s auto-generated thumbnail of the video. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCarouselCardsInnerVideo.new(
  url: null,
  id: null,
  thumbnail_url: null
)
```

