# Zernio::AdCreativeCarouselCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | Card image, resolved like the matching &#x60;mediaUrls&#x60; entry. Absent when Meta returns no resolvable image for the card. | [optional] |
| **image_hash** | **String** | Meta ad image hash of the card image (&#x60;image_hash&#x60;). | [optional] |
| **headline** | **String** | Card title (Meta &#x60;name&#x60;). | [optional] |
| **description** | **String** | Card description, under the title (Meta &#x60;description&#x60;). | [optional] |
| **link_url** | **String** | Card destination URL (Meta &#x60;link&#x60;). | [optional] |
| **call_to_action** | **String** | Card call to action type (Meta &#x60;call_to_action.type&#x60;), e.g. SHOP_NOW or WATCH_MORE. | [optional] |
| **video_id** | **String** | Meta video id when the card is a video (&#x60;video_id&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreativeCarouselCardsInner.new(
  image_url: null,
  image_hash: null,
  headline: null,
  description: null,
  link_url: null,
  call_to_action: SHOP_NOW,
  video_id: null
)
```

