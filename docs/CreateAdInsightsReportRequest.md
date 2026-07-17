# Zernio::CreateAdInsightsReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant). |  |
| **object_id** | **String** | Meta insights node: act_&lt;n&gt;, campaign id, ad set id or ad id. |  |
| **level** | **String** |  | [optional] |
| **fields** | **String** | Comma-separated Graph insights fields. | [optional] |
| **breakdowns** | **String** | Comma-separated Graph breakdowns. | [optional] |
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
  filtering: null,
  date_preset: null,
  from_date: null,
  to_date: null,
  time_increment: null
)
```

