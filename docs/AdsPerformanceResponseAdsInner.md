# Zernio::AdsPerformanceResponseAdsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio ad ID. | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **currency** | **String** | ISO 4217 code of the ad&#39;s money metrics. | [optional] |
| **creative** | [**AdsPerformanceResponseAdsInnerCreative**](AdsPerformanceResponseAdsInnerCreative.md) |  | [optional] |
| **metrics** | [**AdsPerformanceResponseAdsInnerMetrics**](AdsPerformanceResponseAdsInnerMetrics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsPerformanceResponseAdsInner.new(
  ad_id: null,
  platform_ad_id: null,
  platform: null,
  name: null,
  status: null,
  campaign_name: null,
  ad_set_name: null,
  currency: null,
  creative: null,
  metrics: null
)
```

