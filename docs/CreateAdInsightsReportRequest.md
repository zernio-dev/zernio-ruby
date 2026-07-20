# Zernio::CreateAdInsightsReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant). |  |
| **object_id** | **String** | Meta insights node: act_&lt;n&gt;, campaign id, ad set id or ad id. |  |
| **level** | **String** |  | [optional] |
| **fields** | **String** | Comma-separated Graph insights fields. | [optional] |
| **breakdowns** | **String** | Comma-separated Graph breakdowns. | [optional] |
| **action_breakdowns** | **String** | Comma-separated Graph action breakdowns (e.g. action_type,action_destination). | [optional] |
| **action_attribution_windows** | **Array&lt;String&gt;** | Meta attribution windows (e.g. [\&quot;7d_click\&quot;, \&quot;1d_view\&quot;]). Action values are returned keyed per window. | [optional] |
| **action_report_time** | **String** | When actions are counted: impression, conversion or mixed. | [optional] |
| **use_unified_attribution_setting** | **Boolean** | Use the ad sets&#39; own attribution settings for action counting. | [optional] |
| **filtering** | [**Array&lt;CreateAdInsightsReportRequestFilteringInner&gt;**](CreateAdInsightsReportRequestFilteringInner.md) | Meta filter objects, applied server-side. | [optional] |
| **date_preset** | **String** | Mutually exclusive with fromDate/toDate. | [optional] |
| **from_date** | **Date** |  | [optional] |
| **to_date** | **Date** |  | [optional] |
| **time_increment** | [**CreateAdInsightsReportRequestTimeIncrement**](CreateAdInsightsReportRequestTimeIncrement.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdInsightsReportRequest.new(
  account_id: null,
  object_id: null,
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
  time_increment: null
)
```

