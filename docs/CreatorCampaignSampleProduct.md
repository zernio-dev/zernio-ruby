# Zernio::CreatorCampaignSampleProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **title** | **String** |  |  |
| **image_url** | **String** |  |  |
| **variants** | [**Array&lt;CreatorCampaignSampleProductVariantsInner&gt;**](CreatorCampaignSampleProductVariantsInner.md) | The options a creator picks from. Empty for a product with a single variant. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignSampleProduct.new(
  product_id: null,
  title: null,
  image_url: null,
  variants: null
)
```

