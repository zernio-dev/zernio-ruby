# Zernio::GetYouTubeVideoRetention404Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **param** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetYouTubeVideoRetention404Response.new(
  error: Video not found on this YouTube channel,
  type: not_found,
  code: video_not_found,
  param: videoId
)
```

