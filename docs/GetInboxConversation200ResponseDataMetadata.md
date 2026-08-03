# Zernio::GetInboxConversation200ResponseDataMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_ad_id** | **String** | The Meta ad ID the user clicked. Always present when a referral was captured. | [optional] |
| **meta_ad_source** | **String** | Meta-supplied source identifier, for example ADS. | [optional] |
| **meta_ad_type** | **String** | Meta-supplied referral type, for example OPEN_THREAD. | [optional] |
| **meta_ad_ref** | **String** | The ref parameter passed through from the ad creative. | [optional] |
| **meta_ad_title** | **String** | Title of the ad creative at click time. | [optional] |
| **meta_ad_photo_url** | **String** | Image of the ad creative at click time. | [optional] |
| **meta_ad_video_url** | **String** | Video of the ad creative at click time. | [optional] |
| **meta_ad_post_id** | **String** | The organic post the ad promoted, when the ad was a boosted post. | [optional] |
| **meta_ad_product_id** | **String** | The catalogue product the user clicked, for product ads. | [optional] |
| **meta_ad_flow_id** | **String** | The Meta flow the ad launched, for flow ads. | [optional] |
| **meta_ad_captured_at** | **Time** | When Zernio stored this referral. Always present when a referral was captured. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversation200ResponseDataMetadata.new(
  meta_ad_id: null,
  meta_ad_source: null,
  meta_ad_type: null,
  meta_ad_ref: null,
  meta_ad_title: null,
  meta_ad_photo_url: null,
  meta_ad_video_url: null,
  meta_ad_post_id: null,
  meta_ad_product_id: null,
  meta_ad_flow_id: null,
  meta_ad_captured_at: null
)
```

