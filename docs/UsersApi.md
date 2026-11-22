# Zernio::UsersApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_current_user**](UsersApi.md#get_current_user) | **GET** /v1/users/me | Get the current user |
| [**get_user**](UsersApi.md#get_user) | **GET** /v1/users/{userId} | Get user |
| [**list_users**](UsersApi.md#list_users) | **GET** /v1/users | List users |
| [**remove_user**](UsersApi.md#remove_user) | **DELETE** /v1/users/{userId} | Remove member |


## get_current_user

> <GetCurrentUser200Response> get_current_user

Get the current user

Returns the user the credential belongs to, in the same shape as one element of `users` in GET /v1/users, plus the workspace the credential acts in. Use it to check who an API key belongs to without listing every user.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsersApi.new

begin
  # Get the current user
  result = api_instance.get_current_user
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->get_current_user: #{e}"
end
```

#### Using the get_current_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCurrentUser200Response>, Integer, Hash)> get_current_user_with_http_info

```ruby
begin
  # Get the current user
  data, status_code, headers = api_instance.get_current_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCurrentUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->get_current_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCurrentUser200Response**](GetCurrentUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <GetUser200Response> get_user(user_id)

Get user

Returns a single user's details by ID, including name, email, and role.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsersApi.new
user_id = 'user_id_example' # String | 

begin
  # Get user
  result = api_instance.get_user(user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUser200Response>, Integer, Hash)> get_user_with_http_info(user_id)

```ruby
begin
  # Get user
  data, status_code, headers = api_instance.get_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsers200Response> list_users

List users

Returns all users in the team including roles and profile access. Also returns the currentUserId of the caller.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsersApi.new

begin
  # List users
  result = api_instance.list_users
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_with_http_info

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_user

> <RemoveUser200Response> remove_user(user_id)

Remove member

Removes a member from your team. The member keeps their own login and what they had before joining. What they added as a member passes to the team owner.  API keys the member used in the last 7 days pass to the owner and expire within 24 hours, and their other keys in the team are revoked.  Requires the owner or an admin, and a key that is not restricted. You cannot remove yourself.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsersApi.new
user_id = 'user_id_example' # String | 

begin
  # Remove member
  result = api_instance.remove_user(user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->remove_user: #{e}"
end
```

#### Using the remove_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveUser200Response>, Integer, Hash)> remove_user_with_http_info(user_id)

```ruby
begin
  # Remove member
  data, status_code, headers = api_instance.remove_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsersApi->remove_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

[**RemoveUser200Response**](RemoveUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

