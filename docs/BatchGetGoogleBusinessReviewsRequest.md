# Zernio::BatchGetGoogleBusinessReviewsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_names** | **Array&lt;String&gt;** | Array of full location resource names (e.g. [&#39;accounts/123/locations/456&#39;]) |  |
| **page_size** | **Integer** | Number of reviews per page (max 50) | [optional][default to 50] |
| **page_token** | **String** | Pagination token from previous response | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BatchGetGoogleBusinessReviewsRequest.new(
  location_names: null,
  page_size: null,
  page_token: null
)
```

