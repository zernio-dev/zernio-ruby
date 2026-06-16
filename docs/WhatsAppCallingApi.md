# Zernio::WhatsAppCallingApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_whats_app_calling**](WhatsAppCallingApi.md#disable_whats_app_calling) | **DELETE** /v1/whatsapp/phone-numbers/{id}/calling | Disable calling on a number |
| [**enable_whats_app_calling**](WhatsAppCallingApi.md#enable_whats_app_calling) | **POST** /v1/whatsapp/phone-numbers/{id}/calling | Enable calling on a number |
| [**get_whats_app_call**](WhatsAppCallingApi.md#get_whats_app_call) | **GET** /v1/whatsapp/calls/{callId} | Get a single call |
| [**get_whats_app_call_estimate**](WhatsAppCallingApi.md#get_whats_app_call_estimate) | **GET** /v1/whatsapp/calls/estimate | Estimate per-minute cost for a destination |
| [**get_whats_app_call_permissions**](WhatsAppCallingApi.md#get_whats_app_call_permissions) | **GET** /v1/whatsapp/call-permissions | Check call permission for a consumer |
| [**get_whats_app_calling_config**](WhatsAppCallingApi.md#get_whats_app_calling_config) | **GET** /v1/whatsapp/calling | Get calling config for an account |
| [**initiate_whats_app_call**](WhatsAppCallingApi.md#initiate_whats_app_call) | **POST** /v1/whatsapp/calls | Initiate outbound call |
| [**list_whats_app_calls**](WhatsAppCallingApi.md#list_whats_app_calls) | **GET** /v1/whatsapp/calls | List call history for an account |
| [**update_whats_app_calling**](WhatsAppCallingApi.md#update_whats_app_calling) | **PATCH** /v1/whatsapp/phone-numbers/{id}/calling | Update calling config |


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


## enable_whats_app_calling

> <EnableWhatsAppCalling200Response> enable_whats_app_calling(id, enable_whats_app_calling_request)

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
id = 'id_example' # String | WhatsAppPhoneNumber Mongo ID
enable_whats_app_calling_request = Zernio::EnableWhatsAppCallingRequest.new({account_id: 'account_id_example', forward_to: 'forward_to_example'}) # EnableWhatsAppCallingRequest | 

begin
  # Enable calling on a number
  result = api_instance.enable_whats_app_calling(id, enable_whats_app_calling_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling: #{e}"
end
```

#### Using the enable_whats_app_calling_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableWhatsAppCalling200Response>, Integer, Hash)> enable_whats_app_calling_with_http_info(id, enable_whats_app_calling_request)

```ruby
begin
  # Enable calling on a number
  data, status_code, headers = api_instance.enable_whats_app_calling_with_http_info(id, enable_whats_app_calling_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableWhatsAppCalling200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->enable_whats_app_calling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | WhatsAppPhoneNumber Mongo ID |  |
| **enable_whats_app_calling_request** | [**EnableWhatsAppCallingRequest**](EnableWhatsAppCallingRequest.md) |  |  |

### Return type

[**EnableWhatsAppCalling200Response**](EnableWhatsAppCalling200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_whats_app_call

> <GetWhatsAppCall200Response> get_whats_app_call(call_id, account_id)

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
call_id = 'call_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get a single call
  result = api_instance.get_whats_app_call(call_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->get_whats_app_call: #{e}"
end
```

#### Using the get_whats_app_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCall200Response>, Integer, Hash)> get_whats_app_call_with_http_info(call_id, account_id)

```ruby
begin
  # Get a single call
  data, status_code, headers = api_instance.get_whats_app_call_with_http_info(call_id, account_id)
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
| **call_id** | **String** |  |  |
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

Estimate per-minute cost for a destination

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
  # Estimate per-minute cost for a destination
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
  # Estimate per-minute cost for a destination
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

Check call permission for a consumer

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
  # Check call permission for a consumer
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
  # Check call permission for a consumer
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


## get_whats_app_calling_config

> <GetWhatsAppCallingConfig200Response> get_whats_app_calling_config(account_id)

Get calling config for an account

Returns the local calling configuration snapshot for the connected WhatsApp account: whether calling is enabled, the forward-to destination URI, recording opt-in state, the WhatsAppPhoneNumber doc id (use as `{id}` on the calling-config write endpoints) and whether SIP digest credentials are stored (the encrypted password itself is never returned). 

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

> <InitiateWhatsAppCall200Response> initiate_whats_app_call(initiate_whats_app_call_request)

Initiate outbound call

Initiates an outbound Business-Initiated Call. The Telnyx-side SIP leg is originated server-side (Option B: SIP-first). Telnyx INVITEs Meta directly over TLS:5061 with the SIP digest credentials we captured at calling-enablement time). No client-side SDP is required; pass only `accountId` and `to`.  To send the consumer the call-consent prompt instead of placing a call, pass `action: \"send_call_permission_request\"` (+ optional `bodyText`). The consumer must tap Allow in WhatsApp before `start_call` is permitted; Meta limits the prompt to 1 per consumer per 24h (2 per 7 days) and requires an open 24h service window. 

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

begin
  # Initiate outbound call
  result = api_instance.initiate_whats_app_call(initiate_whats_app_call_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->initiate_whats_app_call: #{e}"
end
```

#### Using the initiate_whats_app_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InitiateWhatsAppCall200Response>, Integer, Hash)> initiate_whats_app_call_with_http_info(initiate_whats_app_call_request)

```ruby
begin
  # Initiate outbound call
  data, status_code, headers = api_instance.initiate_whats_app_call_with_http_info(initiate_whats_app_call_request)
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

Compact history listing for a single connected account. Results are scoped to the resolved SocialAccount; profile-scoped team members cannot read calls on sibling accounts. 

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
| **limit** | **Integer** |  | [optional] |

### Return type

[**ListWhatsAppCalls200Response**](ListWhatsAppCalls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_whats_app_calling

> update_whats_app_calling(id, update_whats_app_calling_request)

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
update_whats_app_calling_request = Zernio::UpdateWhatsAppCallingRequest.new({account_id: 'account_id_example'}) # UpdateWhatsAppCallingRequest | 

begin
  # Update calling config
  api_instance.update_whats_app_calling(id, update_whats_app_calling_request)
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppCallingApi->update_whats_app_calling: #{e}"
end
```

#### Using the update_whats_app_calling_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_whats_app_calling_with_http_info(id, update_whats_app_calling_request)

```ruby
begin
  # Update calling config
  data, status_code, headers = api_instance.update_whats_app_calling_with_http_info(id, update_whats_app_calling_request)
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
| **update_whats_app_calling_request** | [**UpdateWhatsAppCallingRequest**](UpdateWhatsAppCallingRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

