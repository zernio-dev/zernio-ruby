# Zernio::GetAdReview200ResponseReviewAssetGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_status** | **String** | asset_group.primary_status, verbatim: ELIGIBLE, LIMITED, NOT_ELIGIBLE, PAUSED, PENDING, REMOVED. |  |
| **primary_status_reasons** | **Array&lt;String&gt;** | asset_group.primary_status_reasons, verbatim, such as ASSET_GROUP_DISAPPROVED, ASSET_GROUP_UNDER_REVIEW, ASSET_GROUP_LIMITED, CAMPAIGN_PAUSED. Empty when the group serves without issues. |  |
| **assets** | [**Array&lt;GetAdReview200ResponseReviewAssetGroupAssetsInner&gt;**](GetAdReview200ResponseReviewAssetGroupAssetsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReviewAssetGroup.new(
  primary_status: null,
  primary_status_reasons: null,
  assets: null
)
```

