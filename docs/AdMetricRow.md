# Zernio::AdMetricRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **name** | **String** |  |  |
| **platform** | **String** |  |  |
| **status** | **String** |  |  |
| **currency** | **String** |  |  |
| **summary** | [**AdMetricRowSummary**](AdMetricRowSummary.md) |  |  |
| **daily** | [**Array&lt;AdMetricRowDailyInner&gt;**](AdMetricRowDailyInner.md) | With granularity&#x3D;day: one point per day. | [optional] |
| **breakdowns** | **Hash&lt;String, Object&gt;** | With breakdowns: read live from the platform. | [optional] |
| **unsupported_breakdowns** | **Array&lt;String&gt;** |  | [optional] |
| **breakdown_hints** | **Hash&lt;String, String&gt;** |  | [optional] |
| **breakdowns_range** | **Object** |  | [optional] |
| **breakdown_errors** | **Array&lt;Object&gt;** |  | [optional] |
| **breakdown_dropped_metrics** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdMetricRow.new(
  ad_id: null,
  name: null,
  platform: null,
  status: null,
  currency: null,
  summary: null,
  daily: null,
  breakdowns: null,
  unsupported_breakdowns: null,
  breakdown_hints: null,
  breakdowns_range: null,
  breakdown_errors: null,
  breakdown_dropped_metrics: null
)
```

