# Zernio::CtwaAdRequestBodyCreativesInnerVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public URL of the video to upload. Provide either &#x60;url&#x60; or &#x60;id&#x60;. | [optional] |
| **id** | **String** | Reuse a video already uploaded to this ad account (list them with GET /v1/ads/videos) instead of re-uploading. Wins over &#x60;url&#x60;. Provide either &#x60;url&#x60; or &#x60;id&#x60;. | [optional] |
| **thumbnail_url** | **String** | OPTIONAL: when omitted, the poster is auto-generated from Meta&#39;s own preferred video thumbnail. When Meta produces no candidate the request fails with a 502 platform_error (reason: video_thumbnail_unavailable).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaAdRequestBodyCreativesInnerVideo.new(
  url: null,
  id: null,
  thumbnail_url: null
)
```

