# Zernio::GMBAttributesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_gmb_attribute_metadata**](GMBAttributesApi.md#get_gmb_attribute_metadata) | **GET** /v1/accounts/{accountId}/gmb-attribute-metadata | Get attribute metadata |
| [**get_google_business_attributes**](GMBAttributesApi.md#get_google_business_attributes) | **GET** /v1/accounts/{accountId}/gmb-attributes | Get attributes |
| [**update_google_business_attributes**](GMBAttributesApi.md#update_google_business_attributes) | **PUT** /v1/accounts/{accountId}/gmb-attributes | Update attributes |


## get_gmb_attribute_metadata

> <GetGmbAttributeMetadata200Response> get_gmb_attribute_metadata(account_id, opts)

Get attribute metadata

Returns metadata about which Google Business Profile attributes are available for a location or business category. Use this endpoint to discover valid attribute names, value types, and allowed enum values before reading or writing via gmb-attributes.  Two mutually exclusive query modes:  **Location mode**: pass `locationId` (or rely on the account's stored `selectedLocationId`). Google returns attributes valid for that specific location.  **Category mode**: pass `categoryName` (must start with `categories/`) and `regionCode`. Google returns attributes valid for that category across the given region. `languageCode` is optional in category mode.  Both modes support `pageSize` and `pageToken` for pagination. 

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
  location_id: 'location_id_example', # String | GBP location ID (e.g. \"6257659026299438786\"). If omitted, uses the account's stored selectedLocationId. Mutually exclusive with categoryName. 
  category_name: 'category_name_example', # String | Category resource name, must start with \"categories/\" (e.g. \"categories/gcid:plumber\"). Required together with regionCode. Mutually exclusive with locationId. 
  region_code: 'region_code_example', # String | BCP-47 region code (e.g. \"US\", \"ES\"). Required when categoryName is provided. 
  language_code: 'language_code_example', # String | BCP-47 language code for display names (e.g. \"en\", \"es\"). Optional when categoryName is provided. Omitted from the Google call when not supplied. 
  page_size: 56, # Integer | Maximum number of attribute metadata items to return. Google defaults to 200.
  page_token: 'page_token_example' # String | Pagination token from a previous response's nextPageToken field.
}

begin
  # Get attribute metadata
  result = api_instance.get_gmb_attribute_metadata(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->get_gmb_attribute_metadata: #{e}"
end
```

#### Using the get_gmb_attribute_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGmbAttributeMetadata200Response>, Integer, Hash)> get_gmb_attribute_metadata_with_http_info(account_id, opts)

```ruby
begin
  # Get attribute metadata
  data, status_code, headers = api_instance.get_gmb_attribute_metadata_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGmbAttributeMetadata200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBAttributesApi->get_gmb_attribute_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **location_id** | **String** | GBP location ID (e.g. \&quot;6257659026299438786\&quot;). If omitted, uses the account&#39;s stored selectedLocationId. Mutually exclusive with categoryName.  | [optional] |
| **category_name** | **String** | Category resource name, must start with \&quot;categories/\&quot; (e.g. \&quot;categories/gcid:plumber\&quot;). Required together with regionCode. Mutually exclusive with locationId.  | [optional] |
| **region_code** | **String** | BCP-47 region code (e.g. \&quot;US\&quot;, \&quot;ES\&quot;). Required when categoryName is provided.  | [optional] |
| **language_code** | **String** | BCP-47 language code for display names (e.g. \&quot;en\&quot;, \&quot;es\&quot;). Optional when categoryName is provided. Omitted from the Google call when not supplied.  | [optional] |
| **page_size** | **Integer** | Maximum number of attribute metadata items to return. Google defaults to 200. | [optional] |
| **page_token** | **String** | Pagination token from a previous response&#39;s nextPageToken field. | [optional] |

### Return type

[**GetGmbAttributeMetadata200Response**](GetGmbAttributeMetadata200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
update_google_business_attributes_request = Zernio::UpdateGoogleBusinessAttributesRequest.new({attributes: [Zernio::UpdateGoogleBusinessAttributesRequestAttributesInner.new({name: 'name_example'})], attribute_mask: 'attribute_mask_example'}) # UpdateGoogleBusinessAttributesRequest | 
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

