# Zernio::YouTubeVideoRetentionResponseRetentionCurveInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **elapsed_video_time_ratio** | **Float** | Position in the video as a ratio (0.01-1.0, exclusive end of each interval) | [optional] |
| **audience_watch_ratio** | **Float** | Absolute share of viewers watching at this point. Can exceed 1 (rewinds/looping, common on Shorts). | [optional] |
| **relative_retention_performance** | **Float** | Retention vs videos of similar length (0 &#x3D; worst, 0.5 &#x3D; median, 1 &#x3D; best) | [optional] |
| **started_watching** | **Integer** | Viewers who started watching in this segment | [optional] |
| **stopped_watching** | **Integer** | Viewers who stopped watching in this segment | [optional] |
| **total_segment_impressions** | **Integer** | Total views of this segment, including rewatches | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::YouTubeVideoRetentionResponseRetentionCurveInner.new(
  elapsed_video_time_ratio: null,
  audience_watch_ratio: null,
  relative_retention_performance: null,
  started_watching: null,
  stopped_watching: null,
  total_segment_impressions: null
)
```

