# Zernio::GoogleAssetGroupAssetLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_type** | **String** | Google AssetFieldType, such as HEADLINE, LONG_HEADLINE, DESCRIPTION, BUSINESS_NAME, MARKETING_IMAGE, SQUARE_MARKETING_IMAGE, PORTRAIT_MARKETING_IMAGE, LOGO, LANDSCAPE_LOGO or YOUTUBE_VIDEO. |  |
| **asset** | **String** | Existing asset id or resource name customers/{customerId}/assets/{assetId}. Must belong to the campaign&#39;s ad account. | [optional] |
| **text** | **String** | Text assets link as HEADLINE, LONG_HEADLINE, DESCRIPTION or BUSINESS_NAME. | [optional] |
| **image_url** | **String** | Public http(s) image. Links as an image role or LOGO / LANDSCAPE_LOGO. | [optional] |
| **youtube_video_id** | **String** | Links as YOUTUBE_VIDEO. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAssetGroupAssetLink.new(
  field_type: null,
  asset: null,
  text: null,
  image_url: null,
  youtube_video_id: null
)
```

