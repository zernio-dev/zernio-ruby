# Zernio::MessagingCarouselCardVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Video file uploaded to the ad account. | [optional] |
| **id** | **String** | A video already on the ad account. | [optional] |
| **thumbnail_url** | **String** | The card&#39;s poster. Defaults to Meta&#39;s auto-generated thumbnail. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MessagingCarouselCardVideo.new(
  url: null,
  id: null,
  thumbnail_url: null
)
```

