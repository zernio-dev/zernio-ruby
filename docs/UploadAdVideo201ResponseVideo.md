# Zernio::UploadAdVideo201ResponseVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta video id, reusable as video.id on POST /v1/ads/create and inside POST /v1/ads/preview creativeSpec. | [optional] |
| **thumbnail_url** | **String** | Meta-hosted poster URL if available; null when Meta has not produced a poster yet. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadAdVideo201ResponseVideo.new(
  id: null,
  thumbnail_url: null
)
```

