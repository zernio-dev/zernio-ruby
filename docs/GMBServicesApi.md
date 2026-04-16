# Late::GMBServicesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_google_business_services**](GMBServicesApi.md#get_google_business_services) | **GET** /v1/accounts/{accountId}/gmb-services | Get services |
| [**update_google_business_services**](GMBServicesApi.md#update_google_business_services) | **PUT** /v1/accounts/{accountId}/gmb-services | Replace services |


## get_google_business_services

> <GetGoogleBusinessServices200Response> get_google_business_services(account_id, opts)

Get services

Gets the services offered by a Google Business Profile location. Returns an array of service items (structured or free-form with optional price). 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::GMBServicesApi.new
account_id = 'account_id_example' # String | 
opts = {
  location_id: 'location_id_example' # String | Override which location to query. If omitted, uses the account's selected location.
}

begin
  # Get services
  result = api_instance.get_google_business_services(account_id, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling GMBServicesApi->get_google_business_services: #{e}"
end
```

#### Using the get_google_business_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoogleBusinessServices200Response>, Integer, Hash)> get_google_business_services_with_http_info(account_id, opts)

```ruby
begin
  # Get services
  data, status_code, headers = api_instance.get_google_business_services_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoogleBusinessServices200Response>
rescue Late::ApiError => e
  puts "Error when calling GMBServicesApi->get_google_business_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. | [optional] |

### Return type

[**GetGoogleBusinessServices200Response**](GetGoogleBusinessServices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_google_business_services

> <UpdateGoogleBusinessServices200Response> update_google_business_services(account_id, update_google_business_services_request, opts)

Replace services

Replaces the entire service list for a location. Google's API requires full replacement; individual item updates are not supported. Each service can be structured (using a predefined serviceTypeId) or free-form (custom label). 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::GMBServicesApi.new
account_id = 'account_id_example' # String | 
update_google_business_services_request = Late::UpdateGoogleBusinessServicesRequest.new({service_items: [Late::UpdateGoogleBusinessServicesRequestServiceItemsInner.new]}) # UpdateGoogleBusinessServicesRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to target. If omitted, uses the account's selected location.
}

begin
  # Replace services
  result = api_instance.update_google_business_services(account_id, update_google_business_services_request, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling GMBServicesApi->update_google_business_services: #{e}"
end
```

#### Using the update_google_business_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGoogleBusinessServices200Response>, Integer, Hash)> update_google_business_services_with_http_info(account_id, update_google_business_services_request, opts)

```ruby
begin
  # Replace services
  data, status_code, headers = api_instance.update_google_business_services_with_http_info(account_id, update_google_business_services_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGoogleBusinessServices200Response>
rescue Late::ApiError => e
  puts "Error when calling GMBServicesApi->update_google_business_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_google_business_services_request** | [**UpdateGoogleBusinessServicesRequest**](UpdateGoogleBusinessServicesRequest.md) |  |  |
| **location_id** | **String** | Override which location to target. If omitted, uses the account&#39;s selected location. | [optional] |

### Return type

[**UpdateGoogleBusinessServices200Response**](UpdateGoogleBusinessServices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

