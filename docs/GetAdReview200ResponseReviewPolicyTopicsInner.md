# Zernio::GetAdReview200ResponseReviewPolicyTopicsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topic** | **String** |  | [optional] |
| **type** | **String** | PROHIBITED, LIMITED, FULLY_LIMITED, DESCRIPTIVE, BROADENING, AREA_OF_INTEREST_ONLY. | [optional] |
| **evidences** | **Array&lt;Object&gt;** | Google&#39;s PolicyTopicEvidence objects, verbatim. | [optional] |
| **constraints** | **Array&lt;Object&gt;** | Google&#39;s PolicyTopicConstraint objects, verbatim. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReviewPolicyTopicsInner.new(
  topic: null,
  type: null,
  evidences: null,
  constraints: null
)
```

