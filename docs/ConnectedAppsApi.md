# Zernio::ConnectedAppsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_connected_apps**](ConnectedAppsApi.md#list_connected_apps) | **GET** /v1/me/connected-apps | List connected apps |
| [**revoke_connected_app**](ConnectedAppsApi.md#revoke_connected_app) | **DELETE** /v1/me/connected-apps/{clientId} | Revoke connected app |


## list_connected_apps

> <ListConnectedApps200Response> list_connected_apps

List connected apps

Returns the OAuth clients (AI assistants and MCP connectors) the authenticated user has authorized and that still hold a live token.  Requires a session or a full-scope API key. A profile-scoped API key or an OAuth access token is rejected with 403: an app must not be able to enumerate its sibling authorizations. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectedAppsApi.new

begin
  # List connected apps
  result = api_instance.list_connected_apps
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectedAppsApi->list_connected_apps: #{e}"
end
```

#### Using the list_connected_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConnectedApps200Response>, Integer, Hash)> list_connected_apps_with_http_info

```ruby
begin
  # List connected apps
  data, status_code, headers = api_instance.list_connected_apps_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConnectedApps200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectedAppsApi->list_connected_apps_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConnectedApps200Response**](ListConnectedApps200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_connected_app

> <RevokeConnectedApp200Response> revoke_connected_app(client_id)

Revoke connected app

Ends an app's access: invalidates the client's pending authorization codes and revokes every live token it holds for the authenticated user. Takes effect on the app's next request.  Idempotent while the authorization is still on record: revoking an app that was already revoked returns 200 with `revokedTokens: 0`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConnectedAppsApi.new
client_id = 'client_id_example' # String | OAuth client id, as returned by GET /v1/me/connected-apps.

begin
  # Revoke connected app
  result = api_instance.revoke_connected_app(client_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConnectedAppsApi->revoke_connected_app: #{e}"
end
```

#### Using the revoke_connected_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevokeConnectedApp200Response>, Integer, Hash)> revoke_connected_app_with_http_info(client_id)

```ruby
begin
  # Revoke connected app
  data, status_code, headers = api_instance.revoke_connected_app_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevokeConnectedApp200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConnectedAppsApi->revoke_connected_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | OAuth client id, as returned by GET /v1/me/connected-apps. |  |

### Return type

[**RevokeConnectedApp200Response**](RevokeConnectedApp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

