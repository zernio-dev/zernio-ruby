# Zernio::PostMetricContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** |  |  |
| **content_not_retained** | **Boolean** |  | [optional] |
| **thumbnail_url** | **String** |  |  |
| **media_type** | **String** |  |  |
| **media_items** | [**Array&lt;PostMetricMediaItem&gt;**](PostMetricMediaItem.md) |  |  |
| **video_duration_seconds** | **Float** |  |  |
| **media_product_type** | **String** |  | [optional] |
| **is_ai_generated** | **Boolean** |  | [optional] |
| **is_shared_to_feed** | **Boolean** |  | [optional] |
| **media_audio_type** | **String** |  | [optional] |
| **upcoming_start_at** | **Time** | YouTube only. Start time of an upcoming Premiere or scheduled live stream. Absent once it airs. While it is present, publishedAt is the upload time; after it airs, publishedAt is the time it actually started. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricContent.new(
  content: null,
  content_not_retained: null,
  thumbnail_url: null,
  media_type: null,
  media_items: null,
  video_duration_seconds: null,
  media_product_type: null,
  is_ai_generated: null,
  is_shared_to_feed: null,
  media_audio_type: null,
  upcoming_start_at: null
)
```

