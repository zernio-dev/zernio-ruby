# Zernio::WhatsAppSandboxApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_whats_app_sandbox_session**](WhatsAppSandboxApi.md#create_whats_app_sandbox_session) | **POST** /v1/whatsapp/sandbox/sessions | Start a sandbox activation |
| [**delete_whats_app_sandbox_session**](WhatsAppSandboxApi.md#delete_whats_app_sandbox_session) | **DELETE** /v1/whatsapp/sandbox/sessions/{sessionId} | Revoke a sandbox session |
| [**list_whats_app_sandbox_sessions**](WhatsAppSandboxApi.md#list_whats_app_sandbox_sessions) | **GET** /v1/whatsapp/sandbox/sessions | List your sandbox sessions |


## create_whats_app_sandbox_session

> <CreateWhatsAppSandboxSession200Response> create_whats_app_sandbox_session(create_whats_app_sandbox_session_request)

Start a sandbox activation

Creates (or refreshes) a pending sandbox session for the given phone and immediately fires the verified sandbox template from the shared sandbox number to that phone. The session activates when the phone owner replies to that WhatsApp message — the reply itself is proof of ownership.  One phone per user: if the caller already has a non-expired session for a DIFFERENT phone, the request is rejected with `invalid_field_value` (the message names the existing phone so it can be revoked first). Re-creating a session for the SAME phone is idempotent and refreshes the verification template.  If Meta rejects the template send (not a WhatsApp number, paused WABA, token issue), the pending row is rolled back and the Meta error message is returned in `error` so the caller knows why. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppSandboxApi.new
create_whats_app_sandbox_session_request = Zernio::CreateWhatsAppSandboxSessionRequest.new({phone: '+34688246216'}) # CreateWhatsAppSandboxSessionRequest | 

begin
  # Start a sandbox activation
  result = api_instance.create_whats_app_sandbox_session(create_whats_app_sandbox_session_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->create_whats_app_sandbox_session: #{e}"
end
```

#### Using the create_whats_app_sandbox_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppSandboxSession200Response>, Integer, Hash)> create_whats_app_sandbox_session_with_http_info(create_whats_app_sandbox_session_request)

```ruby
begin
  # Start a sandbox activation
  data, status_code, headers = api_instance.create_whats_app_sandbox_session_with_http_info(create_whats_app_sandbox_session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppSandboxSession200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->create_whats_app_sandbox_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_sandbox_session_request** | [**CreateWhatsAppSandboxSessionRequest**](CreateWhatsAppSandboxSessionRequest.md) |  |  |

### Return type

[**CreateWhatsAppSandboxSession200Response**](CreateWhatsAppSandboxSession200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_whats_app_sandbox_session

> <UpdateYoutubeDefaultPlaylist200Response> delete_whats_app_sandbox_session(session_id)

Revoke a sandbox session

Hard-deletes the session. The user loses the ability to send to that phone via the sandbox until they re-activate it. Existing conversations and messages already exchanged with that phone are untouched — revocation only blocks FUTURE sends.  Sessions belonging to other users cannot be revoked; the response is the same 400 as \"session not found\" so existence isn't leaked. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppSandboxApi.new
session_id = 'session_id_example' # String | The session id returned by POST /v1/whatsapp/sandbox/sessions.

begin
  # Revoke a sandbox session
  result = api_instance.delete_whats_app_sandbox_session(session_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->delete_whats_app_sandbox_session: #{e}"
end
```

#### Using the delete_whats_app_sandbox_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_whats_app_sandbox_session_with_http_info(session_id)

```ruby
begin
  # Revoke a sandbox session
  data, status_code, headers = api_instance.delete_whats_app_sandbox_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->delete_whats_app_sandbox_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The session id returned by POST /v1/whatsapp/sandbox/sessions. |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_sandbox_sessions

> <ListWhatsAppSandboxSessions200Response> list_whats_app_sandbox_sessions

List your sandbox sessions

Returns all of the authenticated user's non-expired sandbox sessions (pending + active) plus the sandbox phone number. In practice there is at most one session per user since the sandbox is one-phone-per-user; the array shape is preserved for forward compatibility. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppSandboxApi.new

begin
  # List your sandbox sessions
  result = api_instance.list_whats_app_sandbox_sessions
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->list_whats_app_sandbox_sessions: #{e}"
end
```

#### Using the list_whats_app_sandbox_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppSandboxSessions200Response>, Integer, Hash)> list_whats_app_sandbox_sessions_with_http_info

```ruby
begin
  # List your sandbox sessions
  data, status_code, headers = api_instance.list_whats_app_sandbox_sessions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppSandboxSessions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppSandboxApi->list_whats_app_sandbox_sessions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListWhatsAppSandboxSessions200Response**](ListWhatsAppSandboxSessions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

