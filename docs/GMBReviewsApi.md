# Zernio::GMBReviewsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_get_google_business_reviews**](GMBReviewsApi.md#batch_get_google_business_reviews) | **POST** /v1/accounts/{accountId}/gmb-reviews/batch | Batch get reviews |
| [**delete_google_business_review_reply**](GMBReviewsApi.md#delete_google_business_review_reply) | **DELETE** /v1/accounts/{accountId}/gmb-reviews/{reviewId}/reply | Delete a review reply |
| [**get_google_business_reviews**](GMBReviewsApi.md#get_google_business_reviews) | **GET** /v1/accounts/{accountId}/gmb-reviews | Get reviews |
| [**reply_to_google_business_review**](GMBReviewsApi.md#reply_to_google_business_review) | **POST** /v1/accounts/{accountId}/gmb-reviews/{reviewId}/reply | Reply to a review |


## batch_get_google_business_reviews

> <BatchGetGoogleBusinessReviews200Response> batch_get_google_business_reviews(account_id, batch_get_google_business_reviews_request)

Batch get reviews

Fetches reviews across multiple locations in a single request. More efficient than calling GET /gmb-reviews per location for multi-location businesses. Returns a flat list of individual reviews, each tagged with its review resource name. Note: this endpoint does not return aggregate metrics (averageRating / totalReviewCount). For those, use the single-location GET /gmb-reviews endpoint. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBReviewsApi.new
account_id = 'account_id_example' # String | 
batch_get_google_business_reviews_request = Zernio::BatchGetGoogleBusinessReviewsRequest.new({location_names: ['location_names_example']}) # BatchGetGoogleBusinessReviewsRequest | 

begin
  # Batch get reviews
  result = api_instance.batch_get_google_business_reviews(account_id, batch_get_google_business_reviews_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->batch_get_google_business_reviews: #{e}"
end
```

#### Using the batch_get_google_business_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchGetGoogleBusinessReviews200Response>, Integer, Hash)> batch_get_google_business_reviews_with_http_info(account_id, batch_get_google_business_reviews_request)

```ruby
begin
  # Batch get reviews
  data, status_code, headers = api_instance.batch_get_google_business_reviews_with_http_info(account_id, batch_get_google_business_reviews_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchGetGoogleBusinessReviews200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->batch_get_google_business_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **batch_get_google_business_reviews_request** | [**BatchGetGoogleBusinessReviewsRequest**](BatchGetGoogleBusinessReviewsRequest.md) |  |  |

### Return type

[**BatchGetGoogleBusinessReviews200Response**](BatchGetGoogleBusinessReviews200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_google_business_review_reply

> <DeleteGoogleBusinessReviewReply200Response> delete_google_business_review_reply(account_id, review_id)

Delete a review reply

Removes the business owner reply from a Google Business review. The review itself remains.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBReviewsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
review_id = 'review_id_example' # String | The review ID portion (e.g. \"AIe9_BGx1234567890\"), not the full resource name

begin
  # Delete a review reply
  result = api_instance.delete_google_business_review_reply(account_id, review_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->delete_google_business_review_reply: #{e}"
end
```

#### Using the delete_google_business_review_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteGoogleBusinessReviewReply200Response>, Integer, Hash)> delete_google_business_review_reply_with_http_info(account_id, review_id)

```ruby
begin
  # Delete a review reply
  data, status_code, headers = api_instance.delete_google_business_review_reply_with_http_info(account_id, review_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteGoogleBusinessReviewReply200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->delete_google_business_review_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **review_id** | **String** | The review ID portion (e.g. \&quot;AIe9_BGx1234567890\&quot;), not the full resource name |  |

### Return type

[**DeleteGoogleBusinessReviewReply200Response**](DeleteGoogleBusinessReviewReply200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_google_business_reviews

> <GetGoogleBusinessReviews200Response> get_google_business_reviews(account_id, opts)

Get reviews

Returns reviews for a GBP account including ratings, comments, and owner replies. Use nextPageToken for pagination.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBReviewsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
opts = {
  location_id: 'location_id_example', # String | Override which location to query. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
  page_size: 56, # Integer | Number of reviews to fetch per page (max 50)
  page_token: 'page_token_example' # String | Pagination token from previous response
}

begin
  # Get reviews
  result = api_instance.get_google_business_reviews(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->get_google_business_reviews: #{e}"
end
```

#### Using the get_google_business_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoogleBusinessReviews200Response>, Integer, Hash)> get_google_business_reviews_with_http_info(account_id, opts)

```ruby
begin
  # Get reviews
  data, status_code, headers = api_instance.get_google_business_reviews_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoogleBusinessReviews200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->get_google_business_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |
| **page_size** | **Integer** | Number of reviews to fetch per page (max 50) | [optional][default to 50] |
| **page_token** | **String** | Pagination token from previous response | [optional] |

### Return type

[**GetGoogleBusinessReviews200Response**](GetGoogleBusinessReviews200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_to_google_business_review

> <ReplyToGoogleBusinessReview200Response> reply_to_google_business_review(account_id, review_id, reply_to_google_business_review_request)

Reply to a review

Posts (or updates) the business owner reply to a Google Business review. The reply is associated with the account's currently selected location (set via /v1/accounts/{accountId}/gmb-locations). Calling this endpoint a second time on the same review overwrites the previous reply (PUT semantics on Google's side). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBReviewsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
review_id = 'review_id_example' # String | The review ID portion (e.g. \"AIe9_BGx1234567890\"), not the full resource name
reply_to_google_business_review_request = Zernio::ReplyToGoogleBusinessReviewRequest.new({comment: 'comment_example'}) # ReplyToGoogleBusinessReviewRequest | 

begin
  # Reply to a review
  result = api_instance.reply_to_google_business_review(account_id, review_id, reply_to_google_business_review_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->reply_to_google_business_review: #{e}"
end
```

#### Using the reply_to_google_business_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplyToGoogleBusinessReview200Response>, Integer, Hash)> reply_to_google_business_review_with_http_info(account_id, review_id, reply_to_google_business_review_request)

```ruby
begin
  # Reply to a review
  data, status_code, headers = api_instance.reply_to_google_business_review_with_http_info(account_id, review_id, reply_to_google_business_review_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplyToGoogleBusinessReview200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBReviewsApi->reply_to_google_business_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **review_id** | **String** | The review ID portion (e.g. \&quot;AIe9_BGx1234567890\&quot;), not the full resource name |  |
| **reply_to_google_business_review_request** | [**ReplyToGoogleBusinessReviewRequest**](ReplyToGoogleBusinessReviewRequest.md) |  |  |

### Return type

[**ReplyToGoogleBusinessReview200Response**](ReplyToGoogleBusinessReview200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

