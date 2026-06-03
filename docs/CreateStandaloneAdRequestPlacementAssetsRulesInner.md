# Zernio::CreateStandaloneAdRequestPlacementAssetsRulesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | Image mode. The image to deliver for this rule&#39;s placements. | [optional] |
| **video_url** | **String** | Video mode. The video to deliver for this rule&#39;s placements. | [optional] |
| **thumbnail_url** | **String** | Video mode (optional). Poster image for this rule&#39;s video; auto-generated when omitted. | [optional] |
| **placements** | [**CreateStandaloneAdRequestPlacementAssetsRulesInnerPlacements**](CreateStandaloneAdRequestPlacementAssetsRulesInnerPlacements.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestPlacementAssetsRulesInner.new(
  image_url: null,
  video_url: null,
  thumbnail_url: null,
  placements: null
)
```

