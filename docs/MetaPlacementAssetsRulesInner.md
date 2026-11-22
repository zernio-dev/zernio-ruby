# Zernio::MetaPlacementAssetsRulesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | Image mode. The image to deliver for this rule&#39;s placements. | [optional] |
| **video_url** | **String** | Video mode. The video to deliver for this rule&#39;s placements. Each rule needs this or &#x60;videoId&#x60;. | [optional] |
| **video_id** | **String** | Video mode. ID of a video already on the ad account, used for this rule instead of uploading &#x60;videoUrl&#x60;. Wins over &#x60;videoUrl&#x60;. A video still processing after 30 seconds returns 409. | [optional] |
| **thumbnail_url** | **String** | Video mode (optional). Poster image for this rule&#39;s video; auto-generated when omitted. | [optional] |
| **headline** | **String** | One headline pinned to this rule. Omit to inherit the top-level headline. | [optional] |
| **body** | **String** | One primary text pinned to this rule. Omit to inherit the top-level body. | [optional] |
| **description** | **String** | One link description pinned to this rule. Omit to inherit the top-level description. | [optional] |
| **placements** | [**MetaPlacementAssetsRulesInnerPlacements**](MetaPlacementAssetsRulesInnerPlacements.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaPlacementAssetsRulesInner.new(
  image_url: null,
  video_url: null,
  video_id: null,
  thumbnail_url: null,
  headline: null,
  body: null,
  description: null,
  placements: null
)
```

