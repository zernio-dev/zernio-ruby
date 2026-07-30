# Zernio::InstagramAccountInsightsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** | The Zernio SocialAccount ID | [optional] |
| **platform** | **String** | Platform that served this response. | [optional] |
| **date_range** | [**InstagramAccountInsightsResponseDateRange**](InstagramAccountInsightsResponseDateRange.md) |  | [optional] |
| **metric_type** | **String** |  | [optional] |
| **breakdown** | **String** | Breakdown dimension used (only present when breakdown was requested) | [optional] |
| **metrics** | [**Hash&lt;String, InstagramAccountInsightsResponseMetricsValue&gt;**](InstagramAccountInsightsResponseMetricsValue.md) | Object keyed by metric name. For time_series: each metric has \&quot;total\&quot; (number) and \&quot;values\&quot; (array of {date, value}). For total_value: each metric has \&quot;total\&quot; (number) and optionally \&quot;breakdowns\&quot; (array of {dimension, value}).  Monetary metrics additionally carry \&quot;unit\&quot; and \&quot;currency\&quot;. Zernio never rescales money: \&quot;total\&quot; and every \&quot;values[].value\&quot; are the platform&#39;s raw numbers in the stated unit. Monetary metrics also keep \&quot;values\&quot; on metricType&#x3D;total_value, because their \&quot;total\&quot; is the sum of the daily buckets the platform returned over the range: keep the series so you can reconcile that sum against the platform&#39;s own reporting before invoicing on it. A metric that could not be served is absent from this object and listed in \&quot;unavailableMetrics\&quot; instead, so an unavailable metric is never reported as a zero.  | [optional] |
| **unavailable_metrics** | [**Array&lt;InstagramAccountInsightsResponseUnavailableMetricsInner&gt;**](InstagramAccountInsightsResponseUnavailableMetricsInner.md) | Requested metrics that could not be served. Present only when at least one metric is unavailable, and absent otherwise. Each listed metric is OMITTED from \&quot;metrics\&quot; rather than reported as 0, which is how an unavailable metric is distinguished from a genuine zero. The request itself still succeeds with HTTP 200.  | [optional] |
| **data_delay** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramAccountInsightsResponse.new(
  success: true,
  account_id: null,
  platform: null,
  date_range: null,
  metric_type: null,
  breakdown: null,
  metrics: null,
  unavailable_metrics: null,
  data_delay: Data may be delayed up to 48 hours
)
```

