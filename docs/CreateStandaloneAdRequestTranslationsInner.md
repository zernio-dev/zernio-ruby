# Zernio::CreateStandaloneAdRequestTranslationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locale** | **String** | Language code, resolved to Meta&#39;s numeric locale id. Bare codes target the &#39;(All)&#39; umbrella (&#x60;es&#x60; &#x3D; every Spanish variant); region-qualified codes target the variant (&#x60;pt_BR&#x60;, &#x60;en_GB&#x60;). |  |
| **headline** | **String** | Headline for this language. Inherits the top-level &#x60;headline&#x60; when omitted. | [optional] |
| **body** | **String** | Primary text for this language. Inherits the top-level &#x60;body&#x60; when omitted. | [optional] |
| **description** | **String** | Link description for this language. Inherits the top-level &#x60;description&#x60; when omitted. | [optional] |
| **image_url** | **String** | Image for this language. Inherits the ad&#39;s &#x60;imageUrl&#x60; when omitted. The feed is all-image OR all-video. | [optional] |
| **video_url** | **String** | Video for this language. Inherits the ad&#39;s &#x60;video.url&#x60; when omitted. The feed is all-image OR all-video. | [optional] |
| **thumbnail_url** | **String** | Poster frame for this language&#39;s video. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestTranslationsInner.new(
  locale: null,
  headline: null,
  body: null,
  description: null,
  image_url: null,
  video_url: null,
  thumbnail_url: null
)
```

