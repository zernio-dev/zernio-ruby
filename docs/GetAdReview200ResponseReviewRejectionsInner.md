# Zernio::GetAdReview200ResponseReviewRejectionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reasons** | **Array&lt;String&gt;** |  | [optional] |
| **suggestion** | **String** | TikTok&#39;s advice for fixing the rejection. | [optional] |
| **forbidden_placements** | **Array&lt;String&gt;** |  | [optional] |
| **forbidden_ages** | **Array&lt;String&gt;** |  | [optional] |
| **forbidden_locations** | **Array&lt;String&gt;** |  | [optional] |
| **content** | [**GetAdReview200ResponseReviewRejectionsInnerContent**](GetAdReview200ResponseReviewRejectionsInnerContent.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReviewRejectionsInner.new(
  reasons: null,
  suggestion: null,
  forbidden_placements: null,
  forbidden_ages: null,
  forbidden_locations: null,
  content: null
)
```

