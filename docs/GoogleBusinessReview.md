# Zernio::GoogleBusinessReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Review ID | [optional] |
| **name** | **String** | Full resource name | [optional] |
| **reviewer** | [**GoogleBusinessReviewReviewer**](GoogleBusinessReviewReviewer.md) |  | [optional] |
| **rating** | **Integer** | Numeric star rating (0 when Google sends no rating) | [optional] |
| **star_rating** | **String** | Google&#39;s string rating | [optional] |
| **comment** | **String** | Review text | [optional] |
| **create_time** | **Time** |  | [optional] |
| **update_time** | **Time** |  | [optional] |
| **review_reply** | [**GoogleBusinessReviewReviewReply**](GoogleBusinessReviewReviewReply.md) |  | [optional] |
| **photo_count** | **Integer** | Number of photos attached to the review (photos only, videos are not counted) | [optional] |
| **photos** | [**Array&lt;ListInboxReviews200ResponseDataInnerPhotosInner&gt;**](ListInboxReviews200ResponseDataInnerPhotosInner.md) | Photos attached to the review by the reviewer | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleBusinessReview.new(
  id: null,
  name: null,
  reviewer: null,
  rating: null,
  star_rating: null,
  comment: null,
  create_time: null,
  update_time: null,
  review_reply: null,
  photo_count: null,
  photos: null
)
```

