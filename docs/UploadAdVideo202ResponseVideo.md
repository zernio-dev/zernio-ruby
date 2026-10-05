# Zernio::UploadAdVideo202ResponseVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta video id. Usable as video.id once GET /v1/ads/videos/{videoId} reports ready. | [optional] |
| **status** | **String** |  | [optional] |
| **thumbnail_url** | **String** | Always null on 202; read it from GET /v1/ads/videos/{videoId} once ready. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadAdVideo202ResponseVideo.new(
  id: null,
  status: null,
  thumbnail_url: null
)
```

