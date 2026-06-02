# Zernio::CreateStandaloneAdRequestDynamicCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_urls** | **Array&lt;String&gt;** | Pool of image URLs (1-10). Uploaded to the ad account and referenced by hash in the asset feed. |  |
| **bodies** | **Array&lt;String&gt;** | Primary-text variations (the body copy). | [optional] |
| **titles** | **Array&lt;String&gt;** | Headline variations. | [optional] |
| **descriptions** | **Array&lt;String&gt;** | Description (link caption) variations. | [optional] |
| **link_urls** | **Array&lt;String&gt;** | Destination URL variations. At least one is required unless &#x60;goal&#x60; is &#x60;lead_generation&#x60;. | [optional] |
| **call_to_action_types** | **Array&lt;String&gt;** | CTA-button variations. Required. | [optional] |
| **ad_format** | **String** | Asset-feed ad format. Defaults to SINGLE_IMAGE. | [optional][default to &#39;SINGLE_IMAGE&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestDynamicCreative.new(
  image_urls: null,
  bodies: null,
  titles: null,
  descriptions: null,
  link_urls: null,
  call_to_action_types: null,
  ad_format: null
)
```

