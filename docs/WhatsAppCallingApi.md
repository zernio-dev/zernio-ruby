# Zernio::WhatsAppCallingApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_whats_app_calling**](WhatsAppCallingApi.md#disable_whats_app_calling) | **DELETE** /v1/phone-numbers/{id}/whatsapp/calling | Disable calling on a number |
| [**disable_whats_app_calling_legacy**](WhatsAppCallingApi.md#disable_whats_app_calling_legacy) | **DELETE** /v1/whatsapp/phone-numbers/{id}/calling | Disable calling on a number |
| [**enable_whats_app_calling**](WhatsAppCallingApi.md#enable_whats_app_calling) | **POST** /v1/phone-numbers/{id}/whatsapp/calling | Enable calling on a number |
| [**enable_whats_app_calling_legacy**](WhatsAppCallingApi.md#enable_whats_app_calling_legacy) | **POST** /v1/whatsapp/phone-numbers/{id}/calling | Enable calling on a number |
| [**get_whats_app_call**](WhatsAppCallingApi.md#get_whats_app_call) | **GET** /v1/whatsapp/calls/{id} | Get a single call |
| [**get_whats_app_call_estimate**](WhatsAppCallingApi.md#get_whats_app_call_estimate) | **GET** /v1/whatsapp/calls/estimate | Estimate per-minute cost |
| [**get_whats_app_call_permissions**](WhatsAppCallingApi.md#get_whats_app_call_permissions) | **GET** /v1/whatsapp/call-permissions | Check call permission |
| [**get_whats_app_call_recording**](WhatsAppCallingApi.md#get_whats_app_call_recording) | **GET** /v1/whatsapp/calls/{id}/recording | Get a call recording |
| [**get_whats_app_calling**](WhatsAppCallingApi.md#get_whats_app_calling) | **GET** /v1/phone-numbers/{id}/whatsapp/calling | Get calling config for a number |
| [**get_whats_app_calling_config**](WhatsAppCallingApi.md#get_whats_app_calling_config) | **GET** /v1/whatsapp/calling | Get calling config for an account |
| [**initiate_whats_app_call**](WhatsAppCallingApi.md#initiate_whats_app_call) | **POST** /v1/whatsapp/calls | Initiate outbound call |
| [**list_whats_app_calls**](WhatsAppCallingApi.md#list_whats_app_calls) | **GET** /v1/whatsapp/calls | List call history for an account |
| [**update_whats_app_calling**](WhatsAppCallingApi.md#update_whats_app_calling) | **PATCH** /v1/phone-numbers/{id}/whatsapp/calling | Update calling config |
| [**update_whats_app_calling_legacy**](WhatsAppCallingApi.md#update_whats_app_calling_legacy) | **PATCH** /v1/whatsapp/phone-numbers/{id}/calling | Update calling config |


## disable_whats_app_calling

> disable_whats_app_calling(id, account_id)

Disable calling on a number

Disable calling. Sends calling.status=DISABLED to Meta (best-effort) and flips the local `callingEnabled` flag off. forwardTo and SIP creds are preserved so a re-enable does not lose the destination. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Disable calling on a number
  api_instance.disable_whats_app_calling(id, account_id)
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->disable_whats_app_calling: #{e}"
end
```

#### Using the disable_whats_app_calling_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_whats_app_calling_with_http_info(id, account_id)

```ruby
begin
  # Disable calling on a number
  data, status_code, headers = api_instance.disable_whats_app_calling_with_http_info(id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->disable_whats_app_calling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_whats_app_calling_legacy

> disable_whats_app_calling_legacy(id, account_id)

Disable calling on a number

Deprecated alias of `/v1/phone-numbers/{id}/whatsapp/calling`; same contract. New integrations should use that path.  Disable calling. Sends calling.status=DISABLED to Meta (best-effort) and flips the local `callingEnabled` flag off. forwardTo and SIP creds are preserved so a re-enable does not lose the destination. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Disable calling on a number
  api_instance.disable_whats_app_calling_legacy(id, account_id)
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->disable_whats_app_calling_legacy: #{e}"
end
```

#### Using the disable_whats_app_calling_legacy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_whats_app_calling_legacy_with_http_info(id, account_id)

```ruby
begin
  # Disable calling on a number
  data, status_code, headers = api_instance.disable_whats_app_calling_legacy_with_http_info(id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->disable_whats_app_calling_legacy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_whats_app_calling

> <EnableWhatsAppCallingLegacy200Response> enable_whats_app_calling(id, enable_whats_app_calling_legacy_request)

Enable calling on a number

Enable WhatsApp Business Calling on a connected number. Configures Meta calling.status=ENABLED with our Telnyx SIP endpoint, fetches and stores the Meta-issued SIP password (encrypted), and snapshots the customer's forward-to destination. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | Phone number record ID (from GET /v1/phone-numbers).
enable_whats_app_calling_legacy_request = Zernio::EnableWhatsAppCallingLegacyRequest.new({account_id: 'account_id_example', forward_to: 'forward_to_example'}) # EnableWhatsAppCallingLegacyRequest | 

begin
  # Enable calling on a number
  result = api_instance.enable_whats_app_calling(id, enable_whats_app_calling_legacy_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling: #{e}"
end
```

#### Using the enable_whats_app_calling_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableWhatsAppCallingLegacy200Response>, Integer, Hash)> enable_whats_app_calling_with_http_info(id, enable_whats_app_calling_legacy_request)

```ruby
begin
  # Enable calling on a number
  data, status_code, headers = api_instance.enable_whats_app_calling_with_http_info(id, enable_whats_app_calling_legacy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableWhatsAppCallingLegacy200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID (from GET /v1/phone-numbers). |  |
| **enable_whats_app_calling_legacy_request** | [**EnableWhatsAppCallingLegacyRequest**](EnableWhatsAppCallingLegacyRequest.md) |  |  |

### Return type

[**EnableWhatsAppCallingLegacy200Response**](EnableWhatsAppCallingLegacy200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enable_whats_app_calling_legacy

> <EnableWhatsAppCallingLegacy200Response> enable_whats_app_calling_legacy(id, enable_whats_app_calling_legacy_request)

Enable calling on a number

Deprecated alias of `/v1/phone-numbers/{id}/whatsapp/calling`; same contract. New integrations should use that path.  Enable WhatsApp Business Calling on a connected number. Configures Meta calling.status=ENABLED with our Telnyx SIP endpoint, fetches and stores the Meta-issued SIP password (encrypted), and snapshots the customer's forward-to destination. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | WhatsAppPhoneNumber Mongo ID
enable_whats_app_calling_legacy_request = Zernio::EnableWhatsAppCallingLegacyRequest.new({account_id: 'account_id_example', forward_to: 'forward_to_example'}) # EnableWhatsAppCallingLegacyRequest | 

begin
  # Enable calling on a number
  result = api_instance.enable_whats_app_calling_legacy(id, enable_whats_app_calling_legacy_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling_legacy: #{e}"
end
```

#### Using the enable_whats_app_calling_legacy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableWhatsAppCallingLegacy200Response>, Integer, Hash)> enable_whats_app_calling_legacy_with_http_info(id, enable_whats_app_calling_legacy_request)

```ruby
begin
  # Enable calling on a number
  data, status_code, headers = api_instance.enable_whats_app_calling_legacy_with_http_info(id, enable_whats_app_calling_legacy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableWhatsAppCallingLegacy200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling_legacy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | WhatsAppPhoneNumber Mongo ID |  |
| **enable_whats_app_calling_legacy_request** | [**EnableWhatsAppCallingLegacyRequest**](EnableWhatsAppCallingLegacyRequest.md) |  |  |

### Return type

[**EnableWhatsAppCallingLegacy200Response**](EnableWhatsAppCallingLegacy200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_whats_app_call

> <GetWhatsAppCall200Response> get_whats_app_call(id, account_id)

Get a single call

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get a single call
  result = api_instance.get_whats_app_call(id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call: #{e}"
end
```

#### Using the get_whats_app_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCall200Response>, Integer, Hash)> get_whats_app_call_with_http_info(id, account_id)

```ruby
begin
  # Get a single call
  data, status_code, headers = api_instance.get_whats_app_call_with_http_info(id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**GetWhatsAppCall200Response**](GetWhatsAppCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_call_estimate

> <GetWhatsAppCallEstimate200Response> get_whats_app_call_estimate(account_id, to, opts)

Estimate per-minute cost

Returns a zero-markup estimated cost for an outbound call to the given destination, broken down by Meta + Telnyx + recording line items. Costs are pass-through, no margin applied. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
account_id = 'account_id_example' # String | 
to = 'to_example' # String | 
opts = {
  minutes: 56, # Integer | 
  recording: true # Boolean | 
}

begin
  # Estimate per-minute cost
  result = api_instance.get_whats_app_call_estimate(account_id, to, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_estimate: #{e}"
end
```

#### Using the get_whats_app_call_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallEstimate200Response>, Integer, Hash)> get_whats_app_call_estimate_with_http_info(account_id, to, opts)

```ruby
begin
  # Estimate per-minute cost
  data, status_code, headers = api_instance.get_whats_app_call_estimate_with_http_info(account_id, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallEstimate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_estimate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | **String** |  |  |
| **minutes** | **Integer** |  | [optional] |
| **recording** | **Boolean** |  | [optional] |

### Return type

[**GetWhatsAppCallEstimate200Response**](GetWhatsAppCallEstimate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_call_permissions

> <GetWhatsAppCallPermissions200Response> get_whats_app_call_permissions(account_id, to)

Check call permission

Returns the permission state and the list of available actions for a given consumer wa_id (e.g. `start_call`, `send_call_permission_request`). Use this before placing a call to decide whether to prompt for consent first. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
account_id = 'account_id_example' # String | 
to = 'to_example' # String | Consumer wa_id (E.164, leading + optional)

begin
  # Check call permission
  result = api_instance.get_whats_app_call_permissions(account_id, to)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_permissions: #{e}"
end
```

#### Using the get_whats_app_call_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallPermissions200Response>, Integer, Hash)> get_whats_app_call_permissions_with_http_info(account_id, to)

```ruby
begin
  # Check call permission
  data, status_code, headers = api_instance.get_whats_app_call_permissions_with_http_info(account_id, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallPermissions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | **String** | Consumer wa_id (E.164, leading + optional) |  |

### Return type

[**GetWhatsAppCallPermissions200Response**](GetWhatsAppCallPermissions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_call_recording

> <GetWhatsAppCallRecording200Response> get_whats_app_call_recording(id, account_id, opts)

Get a call recording

Resolves a fresh, playable MP3 URL for the call's recording. Provider-signed recording URLs expire ~10 minutes after signing, so the `recordingUrl` stored on the call is usually stale by the time it is played; this endpoint re-signs on demand. Default responds `302 Found` redirecting to the fresh URL (point an `<audio>` element or a link straight at this endpoint); pass `as=json` to receive `{ url }` instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  as: 'json' # String | `json` returns `{ url }` instead of a 302 redirect.
}

begin
  # Get a call recording
  result = api_instance.get_whats_app_call_recording(id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_recording: #{e}"
end
```

#### Using the get_whats_app_call_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallRecording200Response>, Integer, Hash)> get_whats_app_call_recording_with_http_info(id, account_id, opts)

```ruby
begin
  # Get a call recording
  data, status_code, headers = api_instance.get_whats_app_call_recording_with_http_info(id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallRecording200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **as** | **String** | &#x60;json&#x60; returns &#x60;{ url }&#x60; instead of a 302 redirect. | [optional] |

### Return type

[**GetWhatsAppCallRecording200Response**](GetWhatsAppCallRecording200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_calling

> <GetWhatsAppCalling200Response> get_whats_app_calling(id)

Get calling config for a number

The WhatsApp Business Calling configuration of this number, keyed the same way as the POST/PATCH/DELETE below (full read-write on one sub-resource). Encrypted secrets are never returned; only a boolean saying whether a SIP password is stored. The account-scoped read (`GET /v1/whatsapp/calling?accountId=`) remains for callers that only know the social account id, and additionally carries account-level extras (billing eligibility, current-period spend). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | Phone number record ID (from GET /v1/phone-numbers).

begin
  # Get calling config for a number
  result = api_instance.get_whats_app_calling(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_calling: #{e}"
end
```

#### Using the get_whats_app_calling_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCalling200Response>, Integer, Hash)> get_whats_app_calling_with_http_info(id)

```ruby
begin
  # Get calling config for a number
  data, status_code, headers = api_instance.get_whats_app_calling_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCalling200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_calling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID (from GET /v1/phone-numbers). |  |

### Return type

[**GetWhatsAppCalling200Response**](GetWhatsAppCalling200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_calling_config

> <GetWhatsAppCallingConfig200Response> get_whats_app_calling_config(account_id)

Get calling config for an account

Returns the local calling configuration snapshot for the connected WhatsApp account: whether calling is enabled, the forward-to destination URI, recording opt-in state, the phone number record id (use as `{id}` on the read-write calling sub-resource at /v1/phone-numbers/{id}/whatsapp/calling) and whether SIP digest credentials are stored (the encrypted password itself is never returned). Also carries account-level extras (billing eligibility, current-period spend) that the number-keyed GET does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get calling config for an account
  result = api_instance.get_whats_app_calling_config(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_calling_config: #{e}"
end
```

#### Using the get_whats_app_calling_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallingConfig200Response>, Integer, Hash)> get_whats_app_calling_config_with_http_info(account_id)

```ruby
begin
  # Get calling config for an account
  data, status_code, headers = api_instance.get_whats_app_calling_config_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallingConfig200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_calling_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppCallingConfig200Response**](GetWhatsAppCallingConfig200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_whats_app_call

> <InitiateWhatsAppCall200Response> initiate_whats_app_call(initiate_whats_app_call_request, opts)

Initiate outbound call

Initiates an outbound Business-Initiated Call. The Telnyx-side SIP leg is originated server-side (Option B: SIP-first). Telnyx INVITEs Meta directly over TLS:5061 with the SIP digest credentials we captured at calling-enablement time). No client-side SDP is required; pass only `accountId` and `to`.  To send the consumer the call-consent prompt instead of placing a call, pass `action: \"send_call_permission_request\"` (+ optional `bodyText`). The consumer must tap Allow in WhatsApp before `start_call` is permitted; Meta limits the prompt to 1 per consumer per 24h (2 per 7 days) and requires an open 24h service window.  **Idempotency:** send an `Idempotency-Key` header to make retries safe; same key + same body replays the original response instead of dialing (and billing) a second call. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
initiate_whats_app_call_request = Zernio::InitiateWhatsAppCallRequest.new({account_id: 'account_id_example', to: 'to_example'}) # InitiateWhatsAppCallRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes dial retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Initiate outbound call
  result = api_instance.initiate_whats_app_call(initiate_whats_app_call_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->initiate_whats_app_call: #{e}"
end
```

#### Using the initiate_whats_app_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InitiateWhatsAppCall200Response>, Integer, Hash)> initiate_whats_app_call_with_http_info(initiate_whats_app_call_request, opts)

```ruby
begin
  # Initiate outbound call
  data, status_code, headers = api_instance.initiate_whats_app_call_with_http_info(initiate_whats_app_call_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InitiateWhatsAppCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->initiate_whats_app_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **initiate_whats_app_call_request** | [**InitiateWhatsAppCallRequest**](InitiateWhatsAppCallRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes dial retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**InitiateWhatsAppCall200Response**](InitiateWhatsAppCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_whats_app_calls

> <ListWhatsAppCalls200Response> list_whats_app_calls(account_id, opts)

List call history for an account

Compact history listing for a single connected account. Results are scoped to the resolved SocialAccount; profile-scoped team members cannot read calls on sibling accounts.  Cursor pagination: pass the returned `nextCursor` as `before` to fetch the next page (same scheme as `GET /v1/calls`). `since`/`until` remain as absolute range filters and combine with the cursor. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
account_id = 'account_id_example' # String | 
opts = {
  status: 'ringing', # String | 
  direction: 'inbound', # String | 
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Return calls with startedAt strictly before this instant (use the previous page's nextCursor).
  limit: 56 # Integer | 
}

begin
  # List call history for an account
  result = api_instance.list_whats_app_calls(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->list_whats_app_calls: #{e}"
end
```

#### Using the list_whats_app_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppCalls200Response>, Integer, Hash)> list_whats_app_calls_with_http_info(account_id, opts)

```ruby
begin
  # List call history for an account
  data, status_code, headers = api_instance.list_whats_app_calls_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppCalls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->list_whats_app_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **status** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **since** | **Time** |  | [optional] |
| **_until** | **Time** |  | [optional] |
| **before** | **Time** | Return calls with startedAt strictly before this instant (use the previous page&#39;s nextCursor). | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

[**ListWhatsAppCalls200Response**](ListWhatsAppCalls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_whats_app_calling

> update_whats_app_calling(id, update_whats_app_calling_legacy_request)

Update calling config

Update fields on an already-enabled number. Only fields present in the body are written; `undefined` leaves the stored value alone, explicit `null` clears a nullable field. No Meta side effect, this only changes local routing state consumed by the Telnyx webhook handler. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
update_whats_app_calling_legacy_request = Zernio::UpdateWhatsAppCallingLegacyRequest.new({account_id: 'account_id_example'}) # UpdateWhatsAppCallingLegacyRequest | 

begin
  # Update calling config
  api_instance.update_whats_app_calling(id, update_whats_app_calling_legacy_request)
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->update_whats_app_calling: #{e}"
end
```

#### Using the update_whats_app_calling_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_whats_app_calling_with_http_info(id, update_whats_app_calling_legacy_request)

```ruby
begin
  # Update calling config
  data, status_code, headers = api_instance.update_whats_app_calling_with_http_info(id, update_whats_app_calling_legacy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->update_whats_app_calling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_whats_app_calling_legacy_request** | [**UpdateWhatsAppCallingLegacyRequest**](UpdateWhatsAppCallingLegacyRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_calling_legacy

> update_whats_app_calling_legacy(id, update_whats_app_calling_legacy_request)

Update calling config

Deprecated alias of `/v1/phone-numbers/{id}/whatsapp/calling`; same contract. New integrations should use that path.  Update fields on an already-enabled number. Only fields present in the body are written; `undefined` leaves the stored value alone, explicit `null` clears a nullable field. No Meta side effect, this only changes local routing state consumed by the Telnyx webhook handler. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppCallingApi.new
id = 'id_example' # String | 
update_whats_app_calling_legacy_request = Zernio::UpdateWhatsAppCallingLegacyRequest.new({account_id: 'account_id_example'}) # UpdateWhatsAppCallingLegacyRequest | 

begin
  # Update calling config
  api_instance.update_whats_app_calling_legacy(id, update_whats_app_calling_legacy_request)
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->update_whats_app_calling_legacy: #{e}"
end
```

#### Using the update_whats_app_calling_legacy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_whats_app_calling_legacy_with_http_info(id, update_whats_app_calling_legacy_request)

```ruby
begin
  # Update calling config
  data, status_code, headers = api_instance.update_whats_app_calling_legacy_with_http_info(id, update_whats_app_calling_legacy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->update_whats_app_calling_legacy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_whats_app_calling_legacy_request** | [**UpdateWhatsAppCallingLegacyRequest**](UpdateWhatsAppCallingLegacyRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

