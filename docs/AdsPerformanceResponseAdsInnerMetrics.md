# Zernio::AdsPerformanceResponseAdsInnerMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend** | **Float** | In the ad&#39;s currency. | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** | People who saw the ad. De-duplicated over the range on Meta and TikTok when the platform returns it; elsewhere the sum of each day&#39;s reach, which counts a person once per day. | [optional] |
| **frequency** | **Float** | Average times each person saw the ad: &#x60;impressions / reach&#x60;. 0 when the platform reports no reach. | [optional] |
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
  reach: null,
  frequency: null,
  clicks: null,
  ctr: null,
  conversions: null,
  cost_per_conversion: null,
  purchase_value: null,
  roas: null,
  conversions_by_type: null
)
```

