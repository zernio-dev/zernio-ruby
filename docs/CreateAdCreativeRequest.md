# Zernio::CreateAdCreativeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token and Page. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **headline** | **String** |  |  |
| **body** | **String** | Primary text |  |
| **description** | **String** | Link description below the headline; omitted &#x3D; Meta scrapes the destination&#39;s OG description. | [optional] |
| **call_to_action** | **String** | CTA type (same whitelist as POST /v1/ads/create). | [optional][default to &#39;LEARN_MORE&#39;] |
| **link_url** | **String** |  |  |
| **image_url** | **String** | Publicly reachable image; uploaded to the account&#39;s library server-side. | [optional] |
| **image_hash** | **String** | Existing library image hash (POST /v1/ads/images or GET /v1/ads/images). | [optional] |
| **carousel_cards** | [**Array&lt;CreateAdCreativeRequestCarouselCardsInner&gt;**](CreateAdCreativeRequestCarouselCardsInner.md) |  | [optional] |
| **url_tags** | **String** | Appended to every outbound URL (e.g. utm_source&#x3D;fb). | [optional] |
| **creative_features** | **Hash&lt;String, String&gt;** | Advantage+ creative enhancements: partial map of Meta creative feature keys (snake_case) to enroll status, forwarded as degrees_of_freedom_spec.creative_features_spec. Unspecified features default to OPT_OUT. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCreativeRequest.new(
  account_id: null,
  ad_account_id: null,
  headline: null,
  body: null,
  description: null,
  call_to_action: null,
  link_url: null,
  image_url: null,
  image_hash: null,
  carousel_cards: null,
  url_tags: null,
  creative_features: null
)
```

