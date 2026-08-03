# Zernio::CreateStandaloneAdRequestDynamicCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_urls** | **Array&lt;String&gt;** | Pool of image URLs (1-10). Uploaded to the ad account and referenced by hash in the asset feed. Mutually exclusive with &#x60;videoUrls&#x60;. | [optional] |
| **video_urls** | **Array&lt;String&gt;** | Pool of video URLs (1-10). Uploaded to the ad account and referenced by video id in the asset feed. No thumbnails are needed: Meta auto-generates a poster per video. Mutually exclusive with &#x60;imageUrls&#x60;; &#x60;adFormat&#x60; defaults to SINGLE_VIDEO. | [optional] |
| **bodies** | **Array&lt;String&gt;** | Primary-text variations (the body copy). | [optional] |
| **titles** | **Array&lt;String&gt;** | Headline variations. | [optional] |
| **descriptions** | **Array&lt;String&gt;** | Description (link caption) variations. | [optional] |
| **link_urls** | **Array&lt;String&gt;** | Destination URL variations. At least one is required unless &#x60;goal&#x60; is &#x60;lead_generation&#x60;. | [optional] |
| **call_to_action_types** | **Array&lt;String&gt;** | CTA-button variations. Required. | [optional] |
| **ad_format** | **String** | Asset-feed ad format. Must match the pool: SINGLE_IMAGE / CAROUSEL_IMAGE require &#x60;imageUrls&#x60;, SINGLE_VIDEO requires &#x60;videoUrls&#x60; (400 otherwise). Defaults to SINGLE_IMAGE with &#x60;imageUrls&#x60;, SINGLE_VIDEO with &#x60;videoUrls&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestDynamicCreative.new(
  image_urls: null,
  video_urls: null,
  bodies: null,
  titles: null,
  descriptions: null,
  link_urls: null,
  call_to_action_types: null,
  ad_format: null
)
```

