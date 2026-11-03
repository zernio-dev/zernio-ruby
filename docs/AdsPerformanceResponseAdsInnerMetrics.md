# Zernio::AdsPerformanceResponseAdsInnerMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend** | **Float** | In the ad&#39;s currency. | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **ctr** | **Float** | Percent. | [optional] |
| **conversions** | **Float** | Results over the range (see AdMetrics.conversions). | [optional] |
| **cost_per_conversion** | **Float** |  | [optional] |
| **purchase_value** | **Float** |  | [optional] |
| **roas** | **Float** |  | [optional] |
| **conversions_by_type** | **Hash&lt;String, Float&gt;** | &#x60;conversions&#x60; split by what was counted (Meta action_type or Google conversion action name). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsPerformanceResponseAdsInnerMetrics.new(
  spend: null,
  impressions: null,
  clicks: null,
  ctr: null,
  conversions: null,
  cost_per_conversion: null,
  purchase_value: null,
  roas: null,
  conversions_by_type: null
)
```

