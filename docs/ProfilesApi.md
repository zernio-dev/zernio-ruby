# Zernio::ProfilesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_profile**](ProfilesApi.md#create_profile) | **POST** /v1/profiles | Create profile |
| [**delete_profile**](ProfilesApi.md#delete_profile) | **DELETE** /v1/profiles/{profileId} | Delete profile |
| [**get_profile**](ProfilesApi.md#get_profile) | **GET** /v1/profiles/{profileId} | Get profile |
| [**list_profiles**](ProfilesApi.md#list_profiles) | **GET** /v1/profiles | List profiles |
| [**update_profile**](ProfilesApi.md#update_profile) | **PUT** /v1/profiles/{profileId} | Update profile |


## create_profile

> <ProfileCreateResponse> create_profile(create_profile_request, opts)

Create profile

Creates a new profile with a name, optional description, and color. Names are unique per workspace: a duplicate returns a 409 whose details.existingProfileId carries the id of the existing profile. Send an Idempotency-Key header to make retries safe: a retried create with the same key and body replays the original 201 (same _id) instead of conflicting.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProfilesApi.new
create_profile_request = Zernio::CreateProfileRequest.new({name: 'name_example'}) # CreateProfileRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Create profile
  result = api_instance.create_profile(create_profile_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->create_profile: #{e}"
end
```

#### Using the create_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileCreateResponse>, Integer, Hash)> create_profile_with_http_info(create_profile_request, opts)

```ruby
begin
  # Create profile
  data, status_code, headers = api_instance.create_profile_with_http_info(create_profile_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileCreateResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->create_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_profile_request** | [**CreateProfileRequest**](CreateProfileRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**ProfileCreateResponse**](ProfileCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_profile

> <ProfileDeleteResponse> delete_profile(profile_id)

Delete profile

Permanently deletes a profile. Active connected accounts block deletion (returns 400) - disconnect them first. Any remaining disconnected accounts and provisioned WhatsApp numbers are moved to another of your profiles (a new one is created only if needed), never deleted.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProfilesApi.new
profile_id = 'profile_id_example' # String | 

begin
  # Delete profile
  result = api_instance.delete_profile(profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile: #{e}"
end
```

#### Using the delete_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileDeleteResponse>, Integer, Hash)> delete_profile_with_http_info(profile_id)

```ruby
begin
  # Delete profile
  data, status_code, headers = api_instance.delete_profile_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileDeleteResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |

### Return type

[**ProfileDeleteResponse**](ProfileDeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile

> <ProfileGetResponse> get_profile(profile_id)

Get profile

Returns a single profile by ID, including its name, color, and default status.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProfilesApi.new
profile_id = 'profile_id_example' # String | 

begin
  # Get profile
  result = api_instance.get_profile(profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileGetResponse>, Integer, Hash)> get_profile_with_http_info(profile_id)

```ruby
begin
  # Get profile
  data, status_code, headers = api_instance.get_profile_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileGetResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |

### Return type

[**ProfileGetResponse**](ProfileGetResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profiles

> <ProfilesListResponse> list_profiles(opts)

List profiles

Returns profiles sorted default-first, then by creation date. Filter with name (exact match) and paginate with limit/skip; without those params the full list is returned unchanged. Use includeOverLimit=true to include profiles that exceed the plan limit.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProfilesApi.new
opts = {
  include_over_limit: true, # Boolean | When true, includes over-limit profiles (marked with isOverLimit: true).
  name: 'name_example', # String | Exact-match filter on the profile name. Useful to recover a profile id after an ambiguous create (timeout followed by a 409 on retry).
  limit: 56, # Integer | Page size. When limit or skip is present, the response includes total and skip (and echoes limit).
  skip: 56 # Integer | Number of profiles to skip, applied after sorting and filtering.
}

begin
  # List profiles
  result = api_instance.list_profiles(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->list_profiles: #{e}"
end
```

#### Using the list_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfilesListResponse>, Integer, Hash)> list_profiles_with_http_info(opts)

```ruby
begin
  # List profiles
  data, status_code, headers = api_instance.list_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfilesListResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->list_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_over_limit** | **Boolean** | When true, includes over-limit profiles (marked with isOverLimit: true). | [optional][default to false] |
| **name** | **String** | Exact-match filter on the profile name. Useful to recover a profile id after an ambiguous create (timeout followed by a 409 on retry). | [optional] |
| **limit** | **Integer** | Page size. When limit or skip is present, the response includes total and skip (and echoes limit). | [optional] |
| **skip** | **Integer** | Number of profiles to skip, applied after sorting and filtering. | [optional] |

### Return type

[**ProfilesListResponse**](ProfilesListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile

> <ProfileUpdateResponse> update_profile(profile_id, update_profile_request)

Update profile

Updates a profile's name, description, color, or default status.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProfilesApi.new
profile_id = 'profile_id_example' # String | 
update_profile_request = Zernio::UpdateProfileRequest.new # UpdateProfileRequest | 

begin
  # Update profile
  result = api_instance.update_profile(profile_id, update_profile_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->update_profile: #{e}"
end
```

#### Using the update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileUpdateResponse>, Integer, Hash)> update_profile_with_http_info(profile_id, update_profile_request)

```ruby
begin
  # Update profile
  data, status_code, headers = api_instance.update_profile_with_http_info(profile_id, update_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileUpdateResponse>
rescue Zernio::ApiError => e
  puts "Error when calling ProfilesApi->update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **update_profile_request** | [**UpdateProfileRequest**](UpdateProfileRequest.md) |  |  |

### Return type

[**ProfileUpdateResponse**](ProfileUpdateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

