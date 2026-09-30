# Zernio::GetWhatsAppPricingAnalytics200ResponseDataPointsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Time** |  |  |
| **_end** | **Time** |  |  |
| **phone_number** | **String** | Set when dimensions includes PHONE. |  |
| **country** | **String** | Set when dimensions includes COUNTRY. |  |
| **tier** | **String** | Volume pricing tier. Set when dimensions includes TIER. |  |
| **pricing_type** | **String** | Set when dimensions includes PRICING_TYPE. |  |
| **pricing_category** | **String** | Set when dimensions includes PRICING_CATEGORY. |  |
| **volume** | **Integer** | Messages delivered. |  |
| **cost** | **Float** | Approximate charge, in the currency of the WABA&#39;s payment method. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppPricingAnalytics200ResponseDataPointsInner.new(
  start: null,
  _end: null,
  phone_number: null,
  country: null,
  tier: null,
  pricing_type: null,
  pricing_category: null,
  volume: null,
  cost: null
)
```

