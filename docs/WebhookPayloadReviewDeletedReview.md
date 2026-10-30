# Zernio::WebhookPayloadReviewDeletedReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Full review name, matching review.id on the review.new event (\&quot;accounts/123/locations/456/reviews/789\&quot;). |  |
| **platform** | **String** |  |  |
| **rating** | **Integer** | Star rating the reviewer gave. Null when it was never recorded. |  |
| **created_at** | **Time** | When the reviewer posted the review. Null when it was never recorded. |  |
| **last_seen_at** | **Time** | Last time Zernio saw Google return this review. |  |

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

