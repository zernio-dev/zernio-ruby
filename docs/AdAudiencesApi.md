# Zernio::AdAudiencesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_users_to_ad_audience**](AdAudiencesApi.md#add_users_to_ad_audience) | **POST** /v1/ads/audiences/{audienceId}/users | Add users to audience |
| [**create_ad_audience**](AdAudiencesApi.md#create_ad_audience) | **POST** /v1/ads/audiences | Create custom audience |
| [**delete_ad_audience**](AdAudiencesApi.md#delete_ad_audience) | **DELETE** /v1/ads/audiences/{audienceId} | Delete custom audience |
| [**get_ad_audience**](AdAudiencesApi.md#get_ad_audience) | **GET** /v1/ads/audiences/{audienceId} | Get audience details |
| [**list_ad_audiences**](AdAudiencesApi.md#list_ad_audiences) | **GET** /v1/ads/audiences | List custom audiences |


## add_users_to_ad_audience

> <AddUsersToAdAudience200Response> add_users_to_ad_audience(audience_id, add_users_to_ad_audience_request)

Add users to audience

Upload user data (emails and/or phone numbers) to a customer_list audience. Data is SHA256-hashed server-side before sending to Meta. Max 10,000 users per request.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAudiencesApi.new
audience_id = 'audience_id_example' # String | 
add_users_to_ad_audience_request = Zernio::AddUsersToAdAudienceRequest.new({users: [Zernio::AddUsersToAdAudienceRequestUsersInner.new]}) # AddUsersToAdAudienceRequest | 

begin
  # Add users to audience
  result = api_instance.add_users_to_ad_audience(audience_id, add_users_to_ad_audience_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->add_users_to_ad_audience: #{e}"
end
```

#### Using the add_users_to_ad_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddUsersToAdAudience200Response>, Integer, Hash)> add_users_to_ad_audience_with_http_info(audience_id, add_users_to_ad_audience_request)

```ruby
begin
  # Add users to audience
  data, status_code, headers = api_instance.add_users_to_ad_audience_with_http_info(audience_id, add_users_to_ad_audience_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddUsersToAdAudience200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->add_users_to_ad_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** |  |  |
| **add_users_to_ad_audience_request** | [**AddUsersToAdAudienceRequest**](AddUsersToAdAudienceRequest.md) |  |  |

### Return type

[**AddUsersToAdAudience200Response**](AddUsersToAdAudience200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_audience

> <CreateAdAudience201Response> create_ad_audience(create_ad_audience_request)

Create custom audience

Create a customer list, website retargeting, or lookalike audience on Meta (Facebook/Instagram).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAudiencesApi.new
create_ad_audience_request = Zernio::CreateAdAudienceRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', type: 'customer_list'}) # CreateAdAudienceRequest | 

begin
  # Create custom audience
  result = api_instance.create_ad_audience(create_ad_audience_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->create_ad_audience: #{e}"
end
```

#### Using the create_ad_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdAudience201Response>, Integer, Hash)> create_ad_audience_with_http_info(create_ad_audience_request)

```ruby
begin
  # Create custom audience
  data, status_code, headers = api_instance.create_ad_audience_with_http_info(create_ad_audience_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdAudience201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->create_ad_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_audience_request** | [**CreateAdAudienceRequest**](CreateAdAudienceRequest.md) |  |  |

### Return type

[**CreateAdAudience201Response**](CreateAdAudience201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_audience

> <DeleteAccountGroup200Response> delete_ad_audience(audience_id)

Delete custom audience

Deletes the audience from both Meta and the local database.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAudiencesApi.new
audience_id = 'audience_id_example' # String | 

begin
  # Delete custom audience
  result = api_instance.delete_ad_audience(audience_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->delete_ad_audience: #{e}"
end
```

#### Using the delete_ad_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAccountGroup200Response>, Integer, Hash)> delete_ad_audience_with_http_info(audience_id)

```ruby
begin
  # Delete custom audience
  data, status_code, headers = api_instance.delete_ad_audience_with_http_info(audience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAccountGroup200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->delete_ad_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** |  |  |

### Return type

[**DeleteAccountGroup200Response**](DeleteAccountGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_audience

> <GetAdAudience200Response> get_ad_audience(audience_id)

Get audience details

Returns the local audience record and fresh data from Meta (if available).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAudiencesApi.new
audience_id = 'audience_id_example' # String | 

begin
  # Get audience details
  result = api_instance.get_ad_audience(audience_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->get_ad_audience: #{e}"
end
```

#### Using the get_ad_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAudience200Response>, Integer, Hash)> get_ad_audience_with_http_info(audience_id)

```ruby
begin
  # Get audience details
  data, status_code, headers = api_instance.get_ad_audience_with_http_info(audience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAudience200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->get_ad_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** |  |  |

### Return type

[**GetAdAudience200Response**](GetAdAudience200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_audiences

> <ListAdAudiences200Response> list_ad_audiences(account_id, ad_account_id, opts)

List custom audiences

Returns custom audiences for the given ad account. Supports Meta, Google, TikTok, and Pinterest.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAudiencesApi.new
account_id = 'account_id_example' # String | Social account ID
ad_account_id = 'ad_account_id_example' # String | Platform ad account ID
opts = {
  platform: 'facebook' # String | 
}

begin
  # List custom audiences
  result = api_instance.list_ad_audiences(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->list_ad_audiences: #{e}"
end
```

#### Using the list_ad_audiences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdAudiences200Response>, Integer, Hash)> list_ad_audiences_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # List custom audiences
  data, status_code, headers = api_instance.list_ad_audiences_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdAudiences200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->list_ad_audiences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **ad_account_id** | **String** | Platform ad account ID |  |
| **platform** | **String** |  | [optional] |

### Return type

[**ListAdAudiences200Response**](ListAdAudiences200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

