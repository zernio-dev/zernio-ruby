# Zernio::RunGoogleAnalyticsReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio account ID of the Google Analytics connection (platform &#x60;googleanalytics&#x60;). |  |
| **dimensions** | **Array&lt;String&gt;** | GA4 dimension API names, e.g. &#x60;date&#x60;, &#x60;sessionSource&#x60;, &#x60;pagePath&#x60;. List them with GET /v1/analytics/googleanalytics/metadata. | [optional] |
| **metrics** | **Array&lt;String&gt;** | GA4 metric API names, e.g. &#x60;sessions&#x60;, &#x60;activeUsers&#x60;, &#x60;keyEvents&#x60;, &#x60;totalRevenue&#x60;. |  |
| **dimension_filter** | **Hash&lt;String, Object&gt;** | A Google FilterExpression on dimensions, in Google&#39;s own shape. | [optional] |
| **metric_filter** | **Hash&lt;String, Object&gt;** | A Google FilterExpression on metrics, in Google&#39;s own shape. | [optional] |
| **order_bys** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Google OrderBy objects, e.g. &#x60;{ \&quot;metric\&quot;: { \&quot;metricName\&quot;: \&quot;sessions\&quot; }, \&quot;desc\&quot;: true }&#x60;. | [optional] |
| **limit** | **Integer** | Rows to return. Defaults to Google&#39;s default (10000). | [optional] |
| **date_ranges** | [**Array&lt;RunGoogleAnalyticsReportRequestAllOfDateRangesInner&gt;**](RunGoogleAnalyticsReportRequestAllOfDateRangesInner.md) | Defaults to the last 28 days (&#x60;28daysAgo&#x60; to &#x60;yesterday&#x60;). | [optional] |
| **offset** | **Integer** | Row offset for paging through a report larger than &#x60;limit&#x60;. | [optional] |
| **keep_empty_rows** | **Boolean** |  | [optional] |
| **currency_code** | **String** | ISO 4217 code for currency metrics. Defaults to the property currency. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RunGoogleAnalyticsReportRequest.new(
  account_id: null,
  dimensions: [date, sessionDefaultChannelGroup],
  metrics: [sessions, activeUsers],
  dimension_filter: null,
  metric_filter: null,
  order_bys: null,
  limit: null,
  date_ranges: null,
  offset: null,
  keep_empty_rows: null,
  currency_code: null
)
```

