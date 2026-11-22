# Zernio::InsightMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;InsightMetricRow&gt;**](InsightMetricRow.md) |  |  |
| **pagination** | [**MetricsPagination**](MetricsPagination.md) |  |  |
| **meta** | [**InsightMetricsResponseMeta**](InsightMetricsResponseMeta.md) |  |  |
| **retention_curve** | [**InsightRetentionCurve**](InsightRetentionCurve.md) | With include&#x3D;retentionCurve on a YouTube video. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InsightMetricsResponse.new(
  data: null,
  pagination: null,
  meta: null,
  retention_curve: null
)
```

