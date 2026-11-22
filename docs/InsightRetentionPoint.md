# Zernio::InsightRetentionPoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **elapsed_video_time_ratio** | **Float** | Position in the video, 0.01 to 1. |  |
| **audience_watch_ratio** | **Float** | Share of viewers watching at this position; above 1 when viewers rewind or loop. |  |
| **relative_retention_performance** | **Float** | 0 to 1, against videos of similar length. |  |
| **started_watching** | **Integer** |  |  |
| **stopped_watching** | **Integer** |  |  |
| **total_segment_impressions** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InsightRetentionPoint.new(
  elapsed_video_time_ratio: null,
  audience_watch_ratio: null,
  relative_retention_performance: null,
  started_watching: null,
  stopped_watching: null,
  total_segment_impressions: null
)
```

