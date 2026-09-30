# Zernio::GetWhatsAppPricingAnalytics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **phone_number** | **String** | The number the data is scoped to, digits only. |  |
| **granularity** | **String** |  |  |
| **start** | **Time** |  |  |
| **_end** | **Time** |  |  |
| **data_points** | [**Array&lt;GetWhatsAppPricingAnalytics200ResponseDataPointsInner&gt;**](GetWhatsAppPricingAnalytics200ResponseDataPointsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppPricingAnalytics200Response.new(
  account_id: null,
  phone_number: null,
  granularity: null,
  start: null,
  _end: null,
  data_points: null
)
```

