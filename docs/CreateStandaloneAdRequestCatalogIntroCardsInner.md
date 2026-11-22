# Zernio::CreateStandaloneAdRequestCatalogIntroCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | Card image; uploaded to the ad account and referenced by hash. |  |
| **headline** | **String** | Card headline. Meta does not show it on Instagram. |  |
| **description** | **String** | Card description. Meta does not show it on Instagram. | [optional] |
| **link_url** | **String** | Card destination URL. Defaults to the top-level linkUrl. | [optional] |
| **call_to_action** | **String** | Card CTA override. Defaults to the top-level callToAction; same enum. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCatalogIntroCardsInner.new(
  image_url: null,
  headline: null,
  description: null,
  link_url: null,
  call_to_action: null
)
```

