# Zernio::ReviewWebhookReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform review ID (e.g. \&quot;accounts/123/locations/456/reviews/789\&quot; for Google Business Profile). |  |
| **platform** | **String** | Platform the review originated on (Google Business Profile or Facebook Pages). |  |
| **rating** | **Integer** | Star rating the reviewer gave. Null for a Facebook recommendation without stars. |  |
| **recommendation_type** | **String** | Facebook only. Whether the reviewer recommended the Page. | [optional] |
| **text** | **String** | Review text content. May be empty if the reviewer left only a rating. |  |
| **reviewer** | [**ReviewWebhookReviewReviewer**](ReviewWebhookReviewReviewer.md) |  |  |
| **created_at** | **Time** |  |  |
| **has_reply** | **Boolean** | Whether the connected account has replied to this review. |  |
| **reply** | [**ReviewWebhookReviewReply**](ReviewWebhookReviewReply.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReviewWebhookReview.new(
  id: null,
  platform: null,
  rating: null,
  recommendation_type: null,
  text: null,
  reviewer: null,
  created_at: null,
  has_reply: null,
  reply: null
)
```

