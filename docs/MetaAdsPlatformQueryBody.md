# Zernio::MetaAdsPlatformQueryBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio id of the connected Meta ads account. |  |
| **ad_account_id** | **String** | The Meta ad account, act_&lt;n&gt;. Read its campaigns, ad sets or ads with level and filtering. |  |
| **level** | **String** | The level of each row. Defaults to the ad account. | [optional] |
| **fields** | **Array&lt;String&gt;** | Meta insights fields, such as spend or impressions, up to 100. | [optional] |
| **breakdowns** | **Array&lt;String&gt;** | Meta breakdowns, up to 5. | [optional] |
| **action_breakdowns** | **Array&lt;String&gt;** | An empty array asks Meta for no action breakdown at all. | [optional] |
| **action_attribution_windows** | **Array&lt;String&gt;** | Meta attribution windows, such as 7d_click or 1d_view. | [optional] |
| **action_report_time** | **String** | impression, conversion or mixed. | [optional] |
| **use_unified_attribution_setting** | **Boolean** | Use each ad set&#39;s own attribution setting. | [optional] |
| **filtering** | [**Array&lt;MetaAdsPlatformQueryBodyFilteringInner&gt;**](MetaAdsPlatformQueryBodyFilteringInner.md) | Meta filters of field, operator and value, up to 25. | [optional] |
| **date_preset** | **String** | A Meta date preset, such as last_30d. Not with fromDate and toDate. | [optional] |
| **from_date** | **Date** | First day, YYYY-MM-DD, sent with toDate. | [optional] |
| **to_date** | **Date** | Last day, YYYY-MM-DD, sent with fromDate. | [optional] |
| **time_increment** | [**MetaAdsPlatformQueryBodyTimeIncrement**](MetaAdsPlatformQueryBodyTimeIncrement.md) |  | [optional] |
| **limit** | **Integer** | Rows per page, up to 500. Defaults to 500. | [optional][default to 500] |
| **cursor** | **String** | The pagination.nextCursor of the previous page, unchanged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaAdsPlatformQueryBody.new(
  account_id: null,
  ad_account_id: null,
  level: null,
  fields: null,
  breakdowns: null,
  action_breakdowns: null,
  action_attribution_windows: null,
  action_report_time: null,
  use_unified_attribution_setting: null,
  filtering: null,
  date_preset: null,
  from_date: null,
  to_date: null,
  time_increment: null,
  limit: null,
  cursor: null
)
```

