# Zernio::TikTokSmartPlusMaterialReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_material_id** | **String** | TikTok &#x60;ad_material_id&#x60; of the creative inside this ad. | [optional] |
| **material_type** | **String** | Null for a creative TikTok added on its own or a carousel image. | [optional] |
| **tiktok_item_id** | **String** | The TikTok post id when the creative is a Spark post. | [optional] |
| **video_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **operation_status** | **String** | TikTok &#x60;material_operation_status&#x60;: ENABLE or DISABLE. | [optional] |
| **review_status** | [**TikTokSmartPlusReviewStatus**](TikTokSmartPlusReviewStatus.md) |  | [optional] |
| **raw_review_status** | **String** | TikTok &#x60;review_status&#x60;, verbatim. | [optional] |
| **reject_reasons** | **Array&lt;String&gt;** | Every distinct reason across &#x60;rejections&#x60;. Empty when approved. | [optional] |
| **passed_locations** | **Array&lt;String&gt;** |  | [optional] |
| **rejections** | [**Array&lt;TikTokReviewRejection&gt;**](TikTokReviewRejection.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TikTokSmartPlusMaterialReview.new(
  ad_material_id: null,
  material_type: null,
  tiktok_item_id: null,
  video_id: null,
  name: null,
  operation_status: null,
  review_status: null,
  raw_review_status: null,
  reject_reasons: null,
  passed_locations: null,
  rejections: null
)
```

