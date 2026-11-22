# Zernio::CreateStandaloneAdRequestCarouselCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | Image card: the card image, uploaded to the ad account and referenced by hash. | [optional] |
| **video** | [**CreateStandaloneAdRequestCarouselCardsInnerVideo**](CreateStandaloneAdRequestCarouselCardsInnerVideo.md) |  | [optional] |
| **link_url** | **String** | Card destination URL. Defaults to the top-level linkUrl, or Meta&#39;s lead-form link when leadGenFormId is set and neither is provided. | [optional] |
| **headline** | **String** | Card headline, shown below the card image. | [optional] |
| **description** | **String** | Card description, shown under the headline. | [optional] |
| **call_to_action** | **String** | Card CTA override. Defaults to the top-level callToAction; same enum. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCarouselCardsInner.new(
  image_url: null,
  video: null,
  link_url: null,
  headline: null,
  description: null,
  call_to_action: null
)
```

