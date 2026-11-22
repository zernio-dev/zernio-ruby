# Zernio::GetAdReview200ResponseReviewAssetGroupAssetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_resource_name** | **String** | customers/{customerId}/assets/{assetId} |  |
| **field_type** | **String** | The asset&#39;s role in the group, such as HEADLINE or MARKETING_IMAGE. |  |
| **approval_status** | **String** | asset_group_asset.policy_summary.approval_status, verbatim. |  |
| **review_status** | **String** | asset_group_asset.policy_summary.review_status, verbatim. |  |
| **policy_topics** | [**Array&lt;GooglePolicyTopicEntry&gt;**](GooglePolicyTopicEntry.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReviewAssetGroupAssetsInner.new(
  asset_resource_name: null,
  field_type: null,
  approval_status: null,
  review_status: null,
  policy_topics: null
)
```

