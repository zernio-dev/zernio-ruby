# Zernio::GetTikTokSmartPlusAdReview200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **smart_plus_ad_id** | **String** | The TikTok Smart+ ad whose review this is. | [optional] |
| **review** | [**TikTokSmartPlusAdLevelReview**](TikTokSmartPlusAdLevelReview.md) |  | [optional] |
| **materials** | [**Array&lt;TikTokSmartPlusMaterialReview&gt;**](TikTokSmartPlusMaterialReview.md) | One entry per creative TikTok reviewed (&#x60;material_review_infos&#x60;). | [optional] |
| **read_at** | **Time** | When the verdict was read from TikTok. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTikTokSmartPlusAdReview200Response.new(
  ad_id: null,
  platform: null,
  platform_ad_id: null,
  smart_plus_ad_id: null,
  review: null,
  materials: null,
  read_at: null
)
```

