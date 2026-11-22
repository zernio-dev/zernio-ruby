# Zernio::InsightRetentionCurve

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **String** | fromDate when given; otherwise the publish date, so the curve covers the video lifetime. |  |
| **to_date** | **String** |  |  |
| **provisional_since** | **String** |  |  |
| **duration_seconds** | **Float** |  |  |
| **segment_metrics_available** | **Boolean** | False when YouTube has no startedWatching and stoppedWatching for the video; they read 0. |  |
| **points** | [**Array&lt;InsightRetentionPoint&gt;**](InsightRetentionPoint.md) | Up to 100 points, ascending; empty when YouTube has no curve, as on videos with very few views. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InsightRetentionCurve.new(
  from_date: null,
  to_date: null,
  provisional_since: null,
  duration_seconds: null,
  segment_metrics_available: null,
  points: null
)
```

