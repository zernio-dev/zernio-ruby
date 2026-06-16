# Zernio::BatchGetGoogleBusinessReviews200ResponseLocationReviewsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Full review resource name (accounts/*/locations/*/reviews/*) | [optional] |
| **review** | **Object** | The review object (reviewId, starRating, comment, reviewer, createTime, updateTime, reviewReply) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BatchGetGoogleBusinessReviews200ResponseLocationReviewsInner.new(
  name: null,
  review: null
)
```

