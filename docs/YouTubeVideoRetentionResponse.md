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
| **provisional_since** | **Date** | Present only when the range reaches into YouTube&#39;s ~3-day processing window: the first date whose numbers are provisional and may still be revised by YouTube. | [optional] |
| **segment_metrics_available** | **Boolean** | Whether YouTube returned startedWatching and stoppedWatching for this curve. When false, both are 0 placeholders in every point, not measured values. | [optional] |
| **retention_curve** | [**Array&lt;YouTubeVideoRetentionResponseRetentionCurveInner&gt;**](YouTubeVideoRetentionResponseRetentionCurveInner.md) | Up to 100 points covering the video timeline, aggregated over the date range. Contains only the buckets YouTube reports for that range and is never zero-filled, so it can end before 1.0, skip positions, or be empty. | [optional] |
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
  provisional_since: null,
  segment_metrics_available: null,
  retention_curve: null,
  note: null,
  scope_status: null
)
```

