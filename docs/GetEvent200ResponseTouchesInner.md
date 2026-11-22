# Zernio::GetEvent200ResponseTouchesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **at** | **Time** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **platform** | **String** | The ad platform of the campaign, the one an ad click&#39;s click id names (gclid reads as googleads), or the one a survey answer names (Instagram reads as facebook). | [optional] |
| **ad_account_id** | **String** |  | [optional] |
| **campaign_id** | **String** | The campaign the touch resolved to; null for a touch that named none (search, referral). | [optional] |
| **campaign_name** | **String** | The campaign&#39;s name in the ad account, when Zernio holds it. | [optional] |
| **detail** | [**GetEvent200ResponseTouchesInnerDetail**](GetEvent200ResponseTouchesInnerDetail.md) |  | [optional] |
| **credit** | **Hash&lt;String, Float&gt;** | The share of the event (0 to 1) this touch gets per model: first_touch, last_non_direct, linear, position_based, time_decay, w_shaped. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEvent200ResponseTouchesInner.new(
  at: null,
  kind: null,
  platform: null,
  ad_account_id: null,
  campaign_id: null,
  campaign_name: null,
  detail: null,
  credit: {&quot;linear&quot;:0.5,&quot;first_touch&quot;:1,&quot;time_decay&quot;:0.35}
)
```

