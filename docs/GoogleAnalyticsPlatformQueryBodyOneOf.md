# Zernio::GoogleAnalyticsPlatformQueryBodyOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_type** | **String** | A GA4 report over date ranges, paged with a cursor. |  |
| **account_id** | **String** | The Zernio id of the connected Google Analytics property. |  |
| **dimensions** | **Array&lt;String&gt;** | GA4 dimension names, up to 9. | [optional] |
| **metrics** | **Array&lt;String&gt;** | GA4 metric names, 1 to 10. |  |
| **dimension_filter** | **Hash&lt;String, Object&gt;** | A GA4 FilterExpression on dimensions, sent to Google unchanged. | [optional] |
| **metric_filter** | **Hash&lt;String, Object&gt;** | A GA4 FilterExpression on metrics, sent to Google unchanged. | [optional] |
| **order_bys** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | GA4 OrderBy objects, up to 10. | [optional] |
| **limit** | **Integer** | Rows per page, up to 10,000. Defaults to 10,000. | [optional][default to 10000] |
| **date_ranges** | [**Array&lt;GoogleAnalyticsPlatformQueryBodyOneOfDateRangesInner&gt;**](GoogleAnalyticsPlatformQueryBodyOneOfDateRangesInner.md) | Up to 4 GA4 date ranges. Defaults to the 28 days ending yesterday. | [optional] |
| **keep_empty_rows** | **Boolean** | Keep rows whose metrics are all 0. | [optional] |
| **currency_code** | **String** | ISO 4217 code for money metrics. | [optional] |
| **cursor** | **String** | The pagination.nextCursor of the previous page, unchanged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAnalyticsPlatformQueryBodyOneOf.new(
  report_type: null,
  account_id: null,
  dimensions: null,
  metrics: null,
  dimension_filter: null,
  metric_filter: null,
  order_bys: null,
  limit: null,
  date_ranges: null,
  keep_empty_rows: null,
  currency_code: null,
  cursor: null
)
```

