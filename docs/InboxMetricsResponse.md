# Zernio::InboxMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;InboxMetricRow&gt;**](InboxMetricRow.md) |  |  |
| **pagination** | [**MetricsPagination**](MetricsPagination.md) | Pages groupBy&#x3D;conversation; every other read fits one page. |  |
| **meta** | [**InboxMetricsResponseMeta**](InboxMetricsResponseMeta.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxMetricsResponse.new(
  data: null,
  pagination: null,
  meta: null
)
```

