# Zernio::GetAdVideoStatus200ResponseVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **platform_status** | **String** | Meta&#39;s raw status.video_status, forwarded verbatim. |  |
| **processing_progress** | **Integer** | Meta&#39;s processing percentage when reported. |  |
| **error** | **String** | Meta&#39;s processing error when status is error. |  |
| **thumbnail_url** | **String** | Meta&#39;s auto-generated poster once ready, when Meta produced one. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdVideoStatus200ResponseVideo.new(
  id: null,
  status: null,
  platform_status: null,
  processing_progress: null,
  error: null,
  thumbnail_url: null
)
```

