# Zernio::WebhookPayloadReferralReferral

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ref** | **String** | The &#x60;ref&#x60; parameter of the clicked ig.me / m.me link or ad. | [optional] |
| **source** | **String** | Meta-supplied source (&#x60;SHORTLINK&#x60;, &#x60;SHORTLINKS&#x60;, &#x60;IGME-SOURCE-LINK&#x60;, &#x60;ADS&#x60; - treat as opaque). | [optional] |
| **type** | **String** | Meta-supplied referral type (e.g. &#x60;OPEN_THREAD&#x60;). | [optional] |
| **referer_uri** | **String** | URI of the originating site, when Meta supplies one. Facebook Messenger only. | [optional] |
| **ad_id** | **String** | The Meta ad ID, on returning ad clicks. Facebook Messenger only. | [optional] |
| **ads_context_data** | [**WebhookPayloadReferralReferralAdsContextData**](WebhookPayloadReferralReferralAdsContextData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReferralReferral.new(
  ref: null,
  source: null,
  type: null,
  referer_uri: null,
  ad_id: null,
  ads_context_data: null
)
```

