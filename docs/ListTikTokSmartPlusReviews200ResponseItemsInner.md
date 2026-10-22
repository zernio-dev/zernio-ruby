# Zernio::ListTikTokSmartPlusReviews200ResponseItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smart_plus_ad_id** | **String** |  | [optional] |
| **ad_group_id** | **String** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **review** | [**TikTokSmartPlusAdLevelReview**](TikTokSmartPlusAdLevelReview.md) |  | [optional] |
| **materials** | [**Array&lt;TikTokSmartPlusMaterialReview&gt;**](TikTokSmartPlusMaterialReview.md) | One entry per creative TikTok reviewed (&#x60;material_review_infos&#x60;). | [optional] |
| **read_at** | **Time** | When the verdict was read from TikTok. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokSmartPlusReviews200ResponseItemsInner.new(
  smart_plus_ad_id: null,
  ad_group_id: null,
  campaign_id: null,
  review: null,
  materials: null,
  read_at: null
)
```

