# Zernio::InstagramVideoFallback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **linked_to_original_post** | **Boolean** | True when the ad still references the original Instagram post and keeps its engagement. |  |
| **video_id** | **String** | The Facebook-side ad video Zernio made.  - instagram_video_reuploaded: the copy in the ad account video library (possibly one made by an earlier boost of the same media, reused). The creative carries it as video_id, unless Meta accepted the plain post reference once the copy existed; then the copy is kept for that reference. - instagram_video_rehosted_copy: the new upload the creative uses (an unused copy made by this request is deleted). |  |
| **platform_error** | [**InstagramVideoFallbackPlatformError**](InstagramVideoFallbackPlatformError.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramVideoFallback.new(
  kind: null,
  linked_to_original_post: null,
  video_id: null,
  platform_error: null
)
```

