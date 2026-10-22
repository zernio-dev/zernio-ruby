# Zernio::TikTokSmartPlusAdLevelReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_status** | [**TikTokSmartPlusReviewStatus**](TikTokSmartPlusReviewStatus.md) |  | [optional] |
| **raw_review_status** | **String** | TikTok &#x60;review_status&#x60;, verbatim. | [optional] |
| **reject_reasons** | **Array&lt;String&gt;** | Every distinct reason across &#x60;rejections&#x60;. | [optional] |
| **passed_locations** | **Array&lt;String&gt;** | Location codes that passed the review. | [optional] |
| **appeal_status** | **String** | TikTok &#x60;appeal_status&#x60;, verbatim: NOT_APPEALED, APPEALING, APPEAL_SUCCESSFUL, APPEAL_FAILED, APPEAL_DONE. | [optional] |
| **appeal_reject_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **rejections** | [**Array&lt;TikTokReviewRejection&gt;**](TikTokReviewRejection.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TikTokSmartPlusAdLevelReview.new(
  review_status: null,
  raw_review_status: null,
  reject_reasons: null,
  passed_locations: null,
  appeal_status: null,
  appeal_reject_reasons: null,
  rejections: null
)
```

