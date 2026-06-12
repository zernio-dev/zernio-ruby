# Zernio::YouTubeVideoRetentionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** | The Zernio account ID for the YouTube account | [optional] |
| **video_id** | **String** | The YouTube video ID | [optional] |
| **title** | **String** | Video title | [optional] |
| **published_at** | **Time** | When the video was published on YouTube | [optional] |
| **duration_seconds** | **Integer** | Video length in seconds (from YouTube contentDetails.duration) | [optional] |
| **date_range** | [**YouTubeDailyViewsResponseDateRange**](YouTubeDailyViewsResponseDateRange.md) |  | [optional] |
| **retention_curve** | [**Array&lt;YouTubeVideoRetentionResponseRetentionCurveInner&gt;**](YouTubeVideoRetentionResponseRetentionCurveInner.md) | Up to 100 points covering the video timeline, aggregated over the date range. Empty for videos with very few views. | [optional] |
| **note** | **String** | Present only when the curve is empty, explaining why | [optional] |
| **scope_status** | [**YouTubeDailyViewsResponseScopeStatus**](YouTubeDailyViewsResponseScopeStatus.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::YouTubeVideoRetentionResponse.new(
  success: true,
  account_id: null,
  video_id: null,
  title: null,
  published_at: null,
  duration_seconds: null,
  date_range: null,
  retention_curve: null,
  note: null,
  scope_status: null
)
```

