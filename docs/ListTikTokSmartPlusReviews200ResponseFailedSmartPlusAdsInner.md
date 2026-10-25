# Zernio::ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smart_plus_ad_id** | **String** |  | [optional] |
| **ad_group_id** | **String** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **error** | [**ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInnerError**](ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInnerError.md) |  | [optional] |
| **refused_at** | **Time** | When TikTok refused this ad. Null for a refusal stored before this field existed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner.new(
  smart_plus_ad_id: null,
  ad_group_id: null,
  campaign_id: null,
  error: null,
  refused_at: null
)
```

