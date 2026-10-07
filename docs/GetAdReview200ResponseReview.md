# Zernio::GetAdReview200ResponseReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approved** | **Boolean** | TikTok &#x60;is_approved&#x60;. | [optional] |
| **review_status** | **String** | TikTok &#x60;review_status&#x60;, verbatim: ALL_AVAILABLE (approved everywhere), PART_AVAILABLE (approved for part of the targeting), UNAVAILABLE (rejected). | [optional] |
| **forbidden_placements** | **Array&lt;String&gt;** |  | [optional] |
| **forbidden_ages** | **Array&lt;String&gt;** |  | [optional] |
| **forbidden_locations** | **Array&lt;String&gt;** |  | [optional] |
| **forbidden_operating_systems** | **Array&lt;String&gt;** |  | [optional] |
| **rejections** | [**Array&lt;GetAdReview200ResponseReviewRejectionsInner&gt;**](GetAdReview200ResponseReviewRejectionsInner.md) | One entry per rejected piece of content (TikTok &#x60;reject_info&#x60;). Empty when the ad was approved. | [optional] |
| **approval_status** | **String** | Google only. ad_group_ad.policy_summary.approval_status, verbatim. | [optional] |
| **policy_topics** | [**Array&lt;GetAdReview200ResponseReviewPolicyTopicsInner&gt;**](GetAdReview200ResponseReviewPolicyTopicsInner.md) | Google only. ad_group_ad.policy_summary.policy_topic_entries. | [optional] |
| **read_at** | **Time** | When the verdict was read from the platform. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReview.new(
  approved: null,
  review_status: null,
  forbidden_placements: null,
  forbidden_ages: null,
  forbidden_locations: null,
  forbidden_operating_systems: null,
  rejections: null,
  approval_status: null,
  policy_topics: null,
  read_at: null
)
```

