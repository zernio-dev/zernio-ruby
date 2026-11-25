# Zernio::WebhookPayloadReviewDeletedReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google: full review name. Facebook: the review id from review.new. |  |
| **platform** | **String** |  |  |
| **rating** | **Integer** | Star rating the reviewer gave. Null when it was never recorded. |  |
| **created_at** | **Time** | When the reviewer posted the review. Null when it was never recorded. Always null on Facebook. |  |
| **last_seen_at** | **Time** | Last time Zernio saw Google return this review. On Facebook, when Meta&#39;s removal notice arrived. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReviewDeletedReview.new(
  id: null,
  platform: null,
  rating: null,
  created_at: null,
  last_seen_at: null
)
```

