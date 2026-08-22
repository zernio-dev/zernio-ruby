# Zernio::AdAudiencesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_users_to_ad_audience**](AdAudiencesApi.md#add_users_to_ad_audience) | **POST** /v1/ads/audiences/{audienceId}/users | Add users to audience |
| [**create_ad_audience**](AdAudiencesApi.md#create_ad_audience) | **POST** /v1/ads/audiences | Create custom audience |
| [**delete_ad_audience**](AdAudiencesApi.md#delete_ad_audience) | **DELETE** /v1/ads/audiences/{audienceId} | Delete custom audience |
| [**get_ad_audience**](AdAudiencesApi.md#get_ad_audience) | **GET** /v1/ads/audiences/{audienceId} | Get audience details |
| [**list_ad_audiences**](AdAudiencesApi.md#list_ad_audiences) | **GET** /v1/ads/audiences | List custom audiences |
| [**replace_ad_audience_companies**](AdAudiencesApi.md#replace_ad_audience_companies) | **POST** /v1/ads/audiences/{audienceId}/companies | Replace audience companies |
| [**update_ad_audience**](AdAudiencesApi.md#update_ad_audience) | **PUT** /v1/ads/audiences/{audienceId} | Update an audience |


## add_users_to_ad_audience

> <AddUsersToAdAudience200Response> add_users_to_ad_audience(audience_id, add_users_to_ad_audience_request)

Add users to audience

Upload user data to a customer_list audience. Data is SHA256-hashed server-side before sending to the platform. Email is used on every platform; phone is used on Meta only (other platforms ignore it). On TikTok and Pinterest, the first upload also provisions the audience (deferred create). LinkedIn uploads are full-replace. Max 10,000 users per request.  customer_list only. A LinkedIn `company_list` audience takes company rows, not people: send those to `POST /v1/ads/audiences/{audienceId}/companies`. This endpoint 422s for every other audience type. 

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

Create a custom audience. `customer_list` is supported on Meta, Google, X, LinkedIn, TikTok, and Pinterest; `website` and `lookalike` are Meta-only; `company_list`, `engagement` and `website_retargeting` are LinkedIn-only. `saved_targeting` stores a reusable TargetingSpec (no member upload, no adAccountId) that you reference later via `savedTargetingId` on `POST /v1/ads/create`.  How the audience gets filled depends on the type:  - `customer_list` is created empty. Add members with `POST /v1/ads/audiences/{audienceId}/users`.   On TikTok and Pinterest the audience is provisioned lazily on that first upload (until then its status is `pending`). - `company_list` is filled AT CREATION from the `companies` array below, which is required. To change the list   afterwards send the new full list to `POST /v1/ads/audiences/{audienceId}/companies` (a replace, not a merge).   The `/users` endpoint rejects these audiences with a 422. - `website`, `website_retargeting`, `engagement`, `meta_engagement` and `lookalike` fill themselves from the pixel,   engagement source or seed audience you point them at. They take no member upload at all.  Create is not idempotent, never auto-retry. 

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
create_ad_audience_request = Zernio::SavedTargetingAudience.new({type: 'saved_targeting', account_id: 'account_id_example', name: 'name_example', spec: Zernio::TargetingSpec.new}) # CreateAdAudienceRequest | 

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

Deletes the audience from both the platform and the local database. `saved_targeting` audiences exist only on Zernio, so only the local record is removed.

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

Returns custom audiences for the given ad account. Supports Meta, Google, TikTok, Pinterest, LinkedIn, and X (Twitter).

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
  platform: 'facebook', # String | 
  type: 'customer_list' # String | Filter to one audience type. `saved_targeting` returns stored TargetingSpec audiences; the other types return uploaded/derived audiences.
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
| **type** | **String** | Filter to one audience type. &#x60;saved_targeting&#x60; returns stored TargetingSpec audiences; the other types return uploaded/derived audiences. | [optional] |

### Return type

[**ListAdAudiences200Response**](ListAdAudiences200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_ad_audience_companies

> <ReplaceAdAudienceCompanies200Response> replace_ad_audience_companies(audience_id, replace_ad_audience_companies_request)

Replace audience companies

Upload the company rows of a LinkedIn `company_list` audience (account-based marketing). LinkedIn-only, every other platform returns 422.  A LinkedIn audience segment holds exactly one uploaded list, so the list you send here REPLACES the segment's list instead of being appended to it: always send the full set of companies. LinkedIn returns only the identifier of the uploaded file, never its rows, so the merge cannot be done for you, keep the source list on your side. LinkedIn does not document how quickly companies dropped from the list stop being targeted, so treat removals as eventual rather than immediate. Rows are plain text (not hashed), matched against LinkedIn's own company graph. Matching is asynchronous: LinkedIn takes up to 48h for a new audience and up to 24h for a later update, and the audience stays `processing` meanwhile. LinkedIn recommends at least 1,000 companies for a usable match rate, and caps a list at 300,000.  The initial list is sent with `companies` on `POST /v1/ads/audiences`; this endpoint is for every change after that. 

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
replace_ad_audience_companies_request = Zernio::ReplaceAdAudienceCompaniesRequest.new({companies: [Zernio::ReplaceAdAudienceCompaniesRequestCompaniesInner.new]}) # ReplaceAdAudienceCompaniesRequest | 

begin
  # Replace audience companies
  result = api_instance.replace_ad_audience_companies(audience_id, replace_ad_audience_companies_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->replace_ad_audience_companies: #{e}"
end
```

#### Using the replace_ad_audience_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplaceAdAudienceCompanies200Response>, Integer, Hash)> replace_ad_audience_companies_with_http_info(audience_id, replace_ad_audience_companies_request)

```ruby
begin
  # Replace audience companies
  data, status_code, headers = api_instance.replace_ad_audience_companies_with_http_info(audience_id, replace_ad_audience_companies_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplaceAdAudienceCompanies200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->replace_ad_audience_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** |  |  |
| **replace_ad_audience_companies_request** | [**ReplaceAdAudienceCompaniesRequest**](ReplaceAdAudienceCompaniesRequest.md) |  |  |

### Return type

[**ReplaceAdAudienceCompanies200Response**](ReplaceAdAudienceCompanies200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_audience

> <CreateAdAudience201Response> update_ad_audience(audience_id, update_ad_audience_request)

Update an audience

Update an audience. `saved_targeting` audiences accept `name`, `description`, and `spec` (full replacement, no merge, Zernio-only, no platform call). Platform audiences (uploaded/website/lookalike) accept `name` and `description` only, updated on the platform first and then mirrored locally; their rules are immutable, so `spec` returns 400 for them. Platform audience updates are Meta-only for now (other platforms return 501). Ads already created from a saved_targeting audience are unaffected, they snapshot the targeting at creation. 

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
update_ad_audience_request = Zernio::UpdateAdAudienceRequest.new # UpdateAdAudienceRequest | 

begin
  # Update an audience
  result = api_instance.update_ad_audience(audience_id, update_ad_audience_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->update_ad_audience: #{e}"
end
```

#### Using the update_ad_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdAudience201Response>, Integer, Hash)> update_ad_audience_with_http_info(audience_id, update_ad_audience_request)

```ruby
begin
  # Update an audience
  data, status_code, headers = api_instance.update_ad_audience_with_http_info(audience_id, update_ad_audience_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdAudience201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAudiencesApi->update_ad_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** |  |  |
| **update_ad_audience_request** | [**UpdateAdAudienceRequest**](UpdateAdAudienceRequest.md) |  |  |

### Return type

[**CreateAdAudience201Response**](CreateAdAudience201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

