# Zernio::GMBAttributesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_google_business_attributes**](GMBAttributesApi.md#get_google_business_attributes) | **GET** /v1/accounts/{accountId}/gmb-attributes | Get attributes |
| [**update_google_business_attributes**](GMBAttributesApi.md#update_google_business_attributes) | **PUT** /v1/accounts/{accountId}/gmb-attributes | Update attributes |


## get_google_business_attributes

> <GetGoogleBusinessAttributes200Response> get_google_business_attributes(account_id, opts)

Get attributes

Returns GBP location attributes (amenities, services, accessibility, payment types). Available attributes vary by business category.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBAttributesApi.new
account_id = 'account_id_example' # String | 
opts = {
  location_id: 'location_id_example' # String | Override which location to query. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
}

begin
  # Get attributes
  result = api_instance.get_google_business_attributes(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->get_google_business_attributes: #{e}"
end
```

#### Using the get_google_business_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoogleBusinessAttributes200Response>, Integer, Hash)> get_google_business_attributes_with_http_info(account_id, opts)

```ruby
begin
  # Get attributes
  data, status_code, headers = api_instance.get_google_business_attributes_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoogleBusinessAttributes200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->get_google_business_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |

### Return type

[**GetGoogleBusinessAttributes200Response**](GetGoogleBusinessAttributes200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_google_business_attributes

> <UpdateGoogleBusinessAttributes200Response> update_google_business_attributes(account_id, update_google_business_attributes_request, opts)

Update attributes

Updates location attributes (amenities, services, etc.).  The attributeMask specifies which attributes to update (comma-separated). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBAttributesApi.new
account_id = 'account_id_example' # String | 
update_google_business_attributes_request = Zernio::UpdateGoogleBusinessAttributesRequest.new({attributes: [Zernio::UpdateGoogleBusinessAttributesRequestAttributesInner.new], attribute_mask: 'attribute_mask_example'}) # UpdateGoogleBusinessAttributesRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to target. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
}

begin
  # Update attributes
  result = api_instance.update_google_business_attributes(account_id, update_google_business_attributes_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->update_google_business_attributes: #{e}"
end
```

#### Using the update_google_business_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGoogleBusinessAttributes200Response>, Integer, Hash)> update_google_business_attributes_with_http_info(account_id, update_google_business_attributes_request, opts)

```ruby
begin
  # Update attributes
  data, status_code, headers = api_instance.update_google_business_attributes_with_http_info(account_id, update_google_business_attributes_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGoogleBusinessAttributes200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->update_google_business_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_google_business_attributes_request** | [**UpdateGoogleBusinessAttributesRequest**](UpdateGoogleBusinessAttributesRequest.md) |  |  |
| **location_id** | **String** | Override which location to target. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |

### Return type

[**UpdateGoogleBusinessAttributes200Response**](UpdateGoogleBusinessAttributes200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

