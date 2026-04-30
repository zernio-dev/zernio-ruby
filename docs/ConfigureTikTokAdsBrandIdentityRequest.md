# Zernio::ConfigureTikTokAdsBrandIdentityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID of the &#x60;tiktokads&#x60; account. |  |
| **display_name** | **String** | Brand name shown above the ad on TikTok. |  |
| **image_url** | **String** | Public URL of a square brand image (≥98×98 px, JPG/PNG, max 5 MB). Used as the brand avatar on the ad. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConfigureTikTokAdsBrandIdentityRequest.new(
  account_id: null,
  display_name: null,
  image_url: null
)
```

