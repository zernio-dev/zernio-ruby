# Zernio::ListInboxReviews200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Review identifier. For Google Business Profile this is the full review resource name (accounts/{accountId}/locations/{locationId}/reviews/{reviewId}), so it also encodes the location. | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **location_id** | **String** | Bare Google Business Profile location id the review belongs to. Google Business Profile only; absent for other platforms. | [optional] |
| **location_name** | **String** | Human-readable Google Business Profile location display name. Google Business Profile only; absent for other platforms. | [optional] |
| **reviewer** | [**ListInboxReviews200ResponseDataInnerReviewer**](ListInboxReviews200ResponseDataInnerReviewer.md) |  | [optional] |
| **rating** | **Integer** |  | [optional] |
| **text** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **has_reply** | **Boolean** |  | [optional] |
| **has_photos** | **Boolean** | Whether the review has at least one photo. Google Business Profile only; always false for other platforms. | [optional] |
| **photo_count** | **Integer** | Number of photos attached to the review (photos only; videos are not counted). Google Business Profile only; 0 for other platforms. | [optional] |
| **photos** | [**Array&lt;ListInboxReviews200ResponseDataInnerPhotosInner&gt;**](ListInboxReviews200ResponseDataInnerPhotosInner.md) | Photos attached to the review. Google Business Profile only; always an empty array for other platforms. | [optional] |
| **reply** | [**ListInboxReviews200ResponseDataInnerReply**](ListInboxReviews200ResponseDataInnerReply.md) |  | [optional] |
| **review_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxReviews200ResponseDataInner.new(
  id: null,
  platform: null,
  account_id: null,
  account_username: null,
  location_id: null,
  location_name: null,
  reviewer: null,
  rating: null,
  text: null,
  created: null,
  has_reply: null,
  has_photos: null,
  photo_count: null,
  photos: null,
  reply: null,
  review_url: null
)
```

