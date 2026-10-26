# Zernio::GoogleAnalyticsReportFields

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

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAnalyticsReportFields.new(
  account_id: null,
  dimensions: [date, sessionDefaultChannelGroup],
  metrics: [sessions, activeUsers],
  dimension_filter: null,
  metric_filter: null,
  order_bys: null,
  limit: null
)
```

