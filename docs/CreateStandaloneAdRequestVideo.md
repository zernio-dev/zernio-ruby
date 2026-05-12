# Zernio::CreateStandaloneAdRequestVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public URL of the video. Meta: uploaded via chunked transfer on /act_X/advideos, then the request blocks on Meta&#39;s transcoding until status.video_status &#x3D;&#x3D;&#x3D; &#39;ready&#39;. LinkedIn: uploaded via the Videos API (multipart), then the request blocks until LinkedIn finishes transcoding (status AVAILABLE) — short clips take ~10-30s. |  |
| **thumbnail_url** | **String** | Public URL of a still-image thumbnail for the video. Required by Meta on every video creative (uploaded as an ad image and referenced in object_story_spec.video_data). Ignored by LinkedIn (auto-generated poster frame). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestVideo.new(
  url: null,
  thumbnail_url: null
)
```

