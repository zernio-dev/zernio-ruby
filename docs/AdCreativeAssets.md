# Zernio::AdCreativeAssets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketing_images** | [**Array&lt;AdCreativeAssetsMarketingImagesInner&gt;**](AdCreativeAssetsMarketingImagesInner.md) | Landscape (1.91:1) marketing images. The first item matches &#x60;assetResourceName&#x60;. | [optional] |
| **square_marketing_images** | [**Array&lt;AdCreativeAssetsSquareMarketingImagesInner&gt;**](AdCreativeAssetsSquareMarketingImagesInner.md) | Square (1:1) marketing images. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreativeAssets.new(
  marketing_images: null,
  square_marketing_images: null
)
```

