# Zernio::WebhookPayloadMessageMetadataReferral

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ctwa_clid** | **String** | Meta&#39;s GCLID-equivalent click identifier. | [optional] |
| **source_id** | **String** |  | [optional] |
| **source_type** | **String** |  | [optional] |
| **source_url** | **String** |  | [optional] |
| **headline** | **String** |  | [optional] |
| **body** | **String** |  | [optional] |
| **media_type** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **thumbnail_url** | **String** |  | [optional] |
| **ad_id** | **String** | Facebook Messenger CTM / Instagram CTD only. The Meta ad ID the user clicked to start the conversation.  | [optional] |
| **ref** | **String** | The &#x60;ref&#x60; parameter passed through from the Meta ad creative or from an ig.me / m.me link. Instagram / Facebook Messenger only.  | [optional] |
| **source** | **String** | Meta-supplied source identifier (&#x60;ADS&#x60; for ad clicks; &#x60;SHORTLINK&#x60;, &#x60;SHORTLINKS&#x60; or &#x60;IGME-SOURCE-LINK&#x60; for ref links). Instagram / Facebook Messenger only.  | [optional] |
| **type** | **String** | Meta-supplied referral type (e.g. &#x60;OPEN_THREAD&#x60;). Instagram / Facebook Messenger only.  | [optional] |
| **referer_uri** | **String** | URI of the originating site, when Meta supplies one (m.me links opened from the web). Facebook Messenger only.  | [optional] |
| **ads_context_data** | [**WebhookPayloadMessageMetadataReferralAdsContextData**](WebhookPayloadMessageMetadataReferralAdsContextData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataReferral.new(
  ctwa_clid: null,
  source_id: null,
  source_type: null,
  source_url: null,
  headline: null,
  body: null,
  media_type: null,
  image_url: null,
  video_url: null,
  thumbnail_url: null,
  ad_id: null,
  ref: null,
  source: null,
  type: null,
  referer_uri: null,
  ads_context_data: null
)
```

