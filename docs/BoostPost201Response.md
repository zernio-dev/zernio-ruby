# Zernio::BoostPost201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad** | [**Ad**](Ad.md) |  | [optional] |
| **message** | **String** |  | [optional] |
| **instagram_video_fallback** | [**InstagramVideoFallback**](InstagramVideoFallback.md) |  | [optional] |
| **warnings** | **Array&lt;String&gt;** | Present with instagramVideoFallback: one human-readable line saying how the Instagram video was boosted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPost201Response.new(
  ad: null,
  message: null,
  instagram_video_fallback: null,
  warnings: null
)
```

