# Zernio::GMBReviewsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_get_google_business_reviews**](GMBReviewsApi.md#batch_get_google_business_reviews) | **POST** /v1/accounts/{accountId}/gmb-reviews/batch | Batch get reviews |
| [**get_google_business_reviews**](GMBReviewsApi.md#get_google_business_reviews) | **GET** /v1/accounts/{accountId}/gmb-reviews | Get reviews |


## batch_get_google_business_reviews

> <BatchGetGoogleBusinessReviews200Response> batch_get_google_business_reviews(account_id, batch_get_google_business_reviews_request)

Batch get reviews

Fetches reviews across multiple locations in a single request. More efficient than calling GET /gmb-reviews per location for multi-location businesses. Reviews are grouped by location in the response. 

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

