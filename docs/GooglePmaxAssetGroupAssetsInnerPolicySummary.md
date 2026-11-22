# Zernio::GooglePmaxAssetGroupAssetsInnerPolicySummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approval_status** | **String** | APPROVED, APPROVED_LIMITED, AREA_OF_INTEREST_ONLY, DISAPPROVED or UNKNOWN, verbatim. |  |
| **review_status** | **String** | REVIEW_IN_PROGRESS, REVIEWED, UNDER_APPEAL or ELIGIBLE_MAY_SERVE, verbatim. |  |
| **policy_topics** | [**Array&lt;GooglePolicyTopicEntry&gt;**](GooglePolicyTopicEntry.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupAssetsInnerPolicySummary.new(
  approval_status: null,
  review_status: null,
  policy_topics: null
)
```

