# Zernio::GoogleAnalyticsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio account ID of the Google Analytics connection. | [optional] |
| **property_id** | **String** | Numeric GA4 property ID. | [optional] |
| **dimension_headers** | [**Array&lt;GoogleAnalyticsReportDimensionHeadersInner&gt;**](GoogleAnalyticsReportDimensionHeadersInner.md) |  | [optional] |
| **metric_headers** | [**Array&lt;GoogleAnalyticsReportMetricHeadersInner&gt;**](GoogleAnalyticsReportMetricHeadersInner.md) |  | [optional] |
| **rows** | [**Array&lt;GoogleAnalyticsReportRowsInner&gt;**](GoogleAnalyticsReportRowsInner.md) |  | [optional] |
| **row_count** | **Integer** | Total rows matching the request, across all pages. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Google report metadata (currency, time zone, sampling and thresholding flags). | [optional] |
| **property_quota** | **Hash&lt;String, Object&gt;** | Google quota left on this property after the request (tokens per day and per hour, concurrent requests). Cached responses carry the quota from when they were fetched. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAnalyticsReport.new(
  account_id: null,
  property_id: null,
  dimension_headers: null,
  metric_headers: null,
  rows: null,
  row_count: null,
  metadata: null,
  property_quota: null
)
```

