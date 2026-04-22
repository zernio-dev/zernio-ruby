# Zernio::GetGoogleBusinessPerformance200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **date_range** | [**GetGoogleBusinessPerformance200ResponseDateRange**](GetGoogleBusinessPerformance200ResponseDateRange.md) |  | [optional] |
| **metrics** | [**Hash&lt;String, GetGoogleBusinessPerformance200ResponseMetricsValue&gt;**](GetGoogleBusinessPerformance200ResponseMetricsValue.md) | Each key is a metric name containing total and daily values. | [optional] |
| **data_delay** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessPerformance200Response.new(
  success: true,
  account_id: null,
  platform: googlebusiness,
  date_range: null,
  metrics: null,
  data_delay: Data may be delayed 2-3 days
)
```

