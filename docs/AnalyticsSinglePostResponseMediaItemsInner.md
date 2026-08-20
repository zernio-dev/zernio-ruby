# Zernio::AnalyticsSinglePostResponseMediaItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **url** | **String** | &#39;Direct URL to the media file. Null when the platform withholds it: check mediaStatus before downloading. Instagram omits the video file for Reels it flags as containing copyrighted material (its docs name audio as the usual cause), so type stays \&quot;video\&quot; while the file is permanently unreachable.&#39; | [optional] |
| **thumbnail** | **String** | Thumbnail URL (same as url for images). Still present when url is null. | [optional] |
| **alt_text** | **String** | Accessibility alt text set on the media, when present. | [optional] |
| **media_status** | **String** | unavailable means the media file could not be retrieved (url is null or, for LinkedIn videos, a cover image standing in for the file). available or absent means the file is available at url (older synced items omit the field). | [optional] |
| **unavailable_reason** | **String** | Why the file is missing. platform_withheld means the platform declined to return it and retrying will not help. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsSinglePostResponseMediaItemsInner.new(
  type: null,
  url: null,
  thumbnail: null,
  alt_text: null,
  media_status: null,
  unavailable_reason: null
)
```

