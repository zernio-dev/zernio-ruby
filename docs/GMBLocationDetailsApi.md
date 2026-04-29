# Zernio::GMBLocationDetailsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_google_business_location_details**](GMBLocationDetailsApi.md#get_google_business_location_details) | **GET** /v1/accounts/{accountId}/gmb-location-details | Get location details |
| [**update_google_business_location_details**](GMBLocationDetailsApi.md#update_google_business_location_details) | **PUT** /v1/accounts/{accountId}/gmb-location-details | Update location details |


## get_google_business_location_details

> <GetGoogleBusinessLocationDetails200Response> get_google_business_location_details(account_id, opts)

Get location details

Returns detailed GBP location info (hours, description, phone, website, categories, services). Use readMask to request specific fields.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBLocationDetailsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
opts = {
  location_id: 'location_id_example', # String | Override which location to query. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
  read_mask: 'read_mask_example' # String | Comma-separated fields to return. Available: name, title, phoneNumbers, categories, storefrontAddress, websiteUri, regularHours, specialHours, serviceArea, serviceItems, profile, openInfo, metadata, moreHours. `title` and `metadata` are always included in the response so the `location` summary block can be populated, even if you omit them here. Note: `location` is a derived response field, not a Google readMask value, passing it returns 400. 
}

begin
  # Get location details
  result = api_instance.get_google_business_location_details(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBLocationDetailsApi->get_google_business_location_details: #{e}"
end
```

#### Using the get_google_business_location_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoogleBusinessLocationDetails200Response>, Integer, Hash)> get_google_business_location_details_with_http_info(account_id, opts)

```ruby
begin
  # Get location details
  data, status_code, headers = api_instance.get_google_business_location_details_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoogleBusinessLocationDetails200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBLocationDetailsApi->get_google_business_location_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |
| **read_mask** | **String** | Comma-separated fields to return. Available: name, title, phoneNumbers, categories, storefrontAddress, websiteUri, regularHours, specialHours, serviceArea, serviceItems, profile, openInfo, metadata, moreHours. &#x60;title&#x60; and &#x60;metadata&#x60; are always included in the response so the &#x60;location&#x60; summary block can be populated, even if you omit them here. Note: &#x60;location&#x60; is a derived response field, not a Google readMask value, passing it returns 400.  | [optional] |

### Return type

[**GetGoogleBusinessLocationDetails200Response**](GetGoogleBusinessLocationDetails200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_google_business_location_details

> <UpdateGoogleBusinessLocationDetails200Response> update_google_business_location_details(account_id, update_google_business_location_details_request, opts)

Update location details

Updates GBP location details. The updateMask field is required and specifies which fields to update. This endpoint proxies Google's Business Information API locations.patch, so any valid updateMask field is supported. Common fields: regularHours, specialHours, profile.description, websiteUri, phoneNumbers, categories, serviceItems. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBLocationDetailsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
update_google_business_location_details_request = Zernio::UpdateGoogleBusinessLocationDetailsRequest.new({update_mask: 'update_mask_example'}) # UpdateGoogleBusinessLocationDetailsRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to target. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
}

begin
  # Update location details
  result = api_instance.update_google_business_location_details(account_id, update_google_business_location_details_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBLocationDetailsApi->update_google_business_location_details: #{e}"
end
```

#### Using the update_google_business_location_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateGoogleBusinessLocationDetails200Response>, Integer, Hash)> update_google_business_location_details_with_http_info(account_id, update_google_business_location_details_request, opts)

```ruby
begin
  # Update location details
  data, status_code, headers = api_instance.update_google_business_location_details_with_http_info(account_id, update_google_business_location_details_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateGoogleBusinessLocationDetails200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBLocationDetailsApi->update_google_business_location_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **update_google_business_location_details_request** | [**UpdateGoogleBusinessLocationDetailsRequest**](UpdateGoogleBusinessLocationDetailsRequest.md) |  |  |
| **location_id** | **String** | Override which location to target. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |

### Return type

[**UpdateGoogleBusinessLocationDetails200Response**](UpdateGoogleBusinessLocationDetails200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

