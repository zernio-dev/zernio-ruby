# Zernio::GoogleAnalyticsPlatformQueryBodyOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_type** | **String** | A GA4 realtime report on the last 30 minutes, one page. |  |
| **account_id** | **String** | The Zernio id of the connected Google Analytics property. |  |
| **dimensions** | **Array&lt;String&gt;** | GA4 dimension names, up to 9. | [optional] |
| **metrics** | **Array&lt;String&gt;** | GA4 metric names, 1 to 10. |  |
| **dimension_filter** | **Hash&lt;String, Object&gt;** | A GA4 FilterExpression on dimensions, sent to Google unchanged. | [optional] |
| **metric_filter** | **Hash&lt;String, Object&gt;** | A GA4 FilterExpression on metrics, sent to Google unchanged. | [optional] |
| **order_bys** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | GA4 OrderBy objects, up to 10. | [optional] |
| **limit** | **Integer** | Rows, up to 10,000. | [optional] |
| **minute_ranges** | [**Array&lt;GoogleAnalyticsPlatformQueryBodyOneOf1MinuteRangesInner&gt;**](GoogleAnalyticsPlatformQueryBodyOneOf1MinuteRangesInner.md) | Up to 2 GA4 minute ranges. Defaults to the last 30 minutes. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAnalyticsPlatformQueryBodyOneOf1.new(
  report_type: null,
  account_id: null,
  dimensions: null,
  metrics: null,
  dimension_filter: null,
  metric_filter: null,
  order_bys: null,
  limit: null,
  minute_ranges: null
)
```

