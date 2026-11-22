# Zernio::QueryGoogleSearchConsoleSearchAnalyticsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio account ID of the Google Search Console connection. |  |
| **from_date** | **Date** |  | [optional] |
| **to_date** | **Date** |  | [optional] |
| **dimensions** | **Array&lt;String&gt;** |  | [optional] |
| **type** | **String** | Which Google surface to read. Defaults to &#x60;web&#x60;. &#x60;webMultimodal&#x60; is Google Lens, Circle to Search and image uploads. | [optional] |
| **dimension_filter_groups** | [**Array&lt;QueryGoogleSearchConsoleSearchAnalyticsRequestDimensionFilterGroupsInner&gt;**](QueryGoogleSearchConsoleSearchAnalyticsRequestDimensionFilterGroupsInner.md) |  | [optional] |
| **aggregation_type** | **String** | byNewsShowcasePanel needs a NEWS_SHOWCASE searchAppearance filter and type discover or googleNews. | [optional] |
| **row_limit** | **Integer** | Defaults to 1000. | [optional] |
| **start_row** | **Integer** | Row offset for paging past &#x60;rowLimit&#x60;. | [optional] |
| **data_state** | **String** | &#x60;final&#x60; (default) leaves out the last two or three days; &#x60;all&#x60; includes them while Google is still filling them in; &#x60;hourly_all&#x60; is required with the &#x60;hour&#x60; dimension. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryGoogleSearchConsoleSearchAnalyticsRequest.new(
  account_id: null,
  from_date: 2026-10-01,
  to_date: 2026-10-31,
  dimensions: null,
  type: null,
  dimension_filter_groups: null,
  aggregation_type: null,
  row_limit: null,
  start_row: null,
  data_state: null
)
```

