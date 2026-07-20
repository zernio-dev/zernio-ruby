# Zernio::BatchGetGoogleBusinessReviewsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_names** | **Array&lt;String&gt;** | Array of full location resource names (e.g. [&#39;accounts/123/locations/456&#39;]). Max 50 per request (Google&#39;s batchGetReviews cap); chunk larger sets into multiple requests. |  |
| **page_size** | **Integer** | Number of reviews per page (max 50) | [optional][default to 50] |
| **page_token** | **String** | Pagination token from previous response | [optional] |
| **order_by** | **String** | Sort order requested from Google. Defaults to &#39;updateTime desc&#39; (newest first), which allows early-stopping pagination once results cross your date window. | [optional][default to &#39;updateTime desc&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BatchGetGoogleBusinessReviewsRequest.new(
  location_names: null,
  page_size: null,
  page_token: null,
  order_by: null
)
```

