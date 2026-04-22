# Zernio::BatchGetGoogleBusinessReviews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **location_reviews** | [**Array&lt;BatchGetGoogleBusinessReviews200ResponseLocationReviewsInner&gt;**](BatchGetGoogleBusinessReviews200ResponseLocationReviewsInner.md) |  | [optional] |
| **next_page_token** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BatchGetGoogleBusinessReviews200Response.new(
  success: null,
  account_id: null,
  location_reviews: null,
  next_page_token: null
)
```

