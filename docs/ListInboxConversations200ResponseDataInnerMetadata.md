# Zernio::ListInboxConversations200ResponseDataInnerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ctwa_clid** | **String** | WhatsApp only. Meta&#39;s click identifier, the value to forward to the Meta Conversions API for Business Messaging. Meta omits it on some numbers, so a WhatsApp referral can arrive without it. | [optional] |
| **ctwa_source_id** | **String** | WhatsApp only. The Meta ad ID the user clicked. This is the WhatsApp equivalent of meta_ad_id. | [optional] |
| **ctwa_source_type** | **String** | WhatsApp only. What the user clicked, as supplied by Meta (for example ad or post). | [optional] |
| **ctwa_source_url** | **String** | WhatsApp only. Meta&#39;s URL for the ad that was clicked, normally an fb.me short link. | [optional] |
| **ctwa_headline** | **String** | WhatsApp only. Headline of the ad creative at click time. | [optional] |
| **ctwa_captured_at** | **Time** | WhatsApp only. When Zernio stored this referral. Always present when a WhatsApp referral was captured. | [optional] |
| **meta_ad_id** | **String** | Instagram and Facebook only. The Meta ad ID the user clicked. Always present when an Instagram or Facebook referral was captured. | [optional] |
| **meta_ad_source** | **String** | Instagram and Facebook only. Meta-supplied source identifier, for example ADS. | [optional] |
| **meta_ad_type** | **String** | Instagram and Facebook only. Meta-supplied referral type, for example OPEN_THREAD. | [optional] |
| **meta_ad_ref** | **String** | Instagram and Facebook only. The ref parameter passed through from the ad creative. | [optional] |
| **meta_ad_title** | **String** | Instagram and Facebook only. Title of the ad creative at click time. | [optional] |
| **meta_ad_photo_url** | **String** | Instagram and Facebook only. Image of the ad creative at click time. | [optional] |
| **meta_ad_video_url** | **String** | Instagram and Facebook only. Video of the ad creative at click time. | [optional] |
| **meta_ad_post_id** | **String** | Instagram and Facebook only. The organic post the ad promoted, when the ad was a boosted post. | [optional] |
| **meta_ad_product_id** | **String** | Instagram and Facebook only. The catalogue product the user clicked, for product ads. | [optional] |
| **meta_ad_flow_id** | **String** | Instagram and Facebook only. The Meta flow the ad launched, for flow ads. | [optional] |
| **meta_ad_captured_at** | **Time** | Instagram and Facebook only. When Zernio stored this referral. Always present when an Instagram or Facebook referral was captured. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200ResponseDataInnerMetadata.new(
  ctwa_clid: null,
  ctwa_source_id: null,
  ctwa_source_type: null,
  ctwa_source_url: null,
  ctwa_headline: null,
  ctwa_captured_at: null,
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

