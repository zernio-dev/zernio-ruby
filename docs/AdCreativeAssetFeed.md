# Zernio::AdCreativeAssetFeed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **optimization_type** | **String** | Meta &#x60;optimization_type&#x60;, e.g. PLACEMENT, LANGUAGE or REGULAR (dynamic creative). | [optional] |
| **images** | [**Array&lt;AdCreativeAssetFeedImagesInner&gt;**](AdCreativeAssetFeedImagesInner.md) |  | [optional] |
| **videos** | [**Array&lt;AdCreativeAssetFeedVideosInner&gt;**](AdCreativeAssetFeedVideosInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreativeAssetFeed.new(
  optimization_type: null,
  images: null,
  videos: null
)
```

