# Zernio::VoiceApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_voice_call**](VoiceApi.md#create_voice_call) | **POST** /v1/voice/calls | Place an outbound phone call |
| [**create_voice_web_session**](VoiceApi.md#create_voice_web_session) | **POST** /v1/voice/calls/web | Mint a browser softphone session |
| [**dial_voice_web_call**](VoiceApi.md#dial_voice_web_call) | **POST** /v1/voice/calls/web/dial | Dial from the browser softphone |
| [**disable_voice_on_number**](VoiceApi.md#disable_voice_on_number) | **DELETE** /v1/phone-numbers/{id}/voice | Disable phone calling on a number |
| [**enable_voice_on_number**](VoiceApi.md#enable_voice_on_number) | **POST** /v1/phone-numbers/{id}/voice | Enable phone calling on a number |
| [**end_voice_call**](VoiceApi.md#end_voice_call) | **POST** /v1/voice/calls/{id}/end | Hang up a live call |
| [**get_voice_call**](VoiceApi.md#get_voice_call) | **GET** /v1/voice/calls/{id} | Get a phone call |
| [**get_voice_call_estimate**](VoiceApi.md#get_voice_call_estimate) | **GET** /v1/voice/calls/estimate | Estimate call cost |
| [**get_voice_call_recording**](VoiceApi.md#get_voice_call_recording) | **GET** /v1/voice/calls/{id}/recording | Get a call recording |
| [**list_voice_calls**](VoiceApi.md#list_voice_calls) | **GET** /v1/voice/calls | List phone calls |
| [**transfer_voice_call**](VoiceApi.md#transfer_voice_call) | **POST** /v1/voice/calls/{id}/transfer | Blind-transfer a live call |


## create_voice_call

> <CreateVoiceCall200Response> create_voice_call(create_voice_call_request, opts)

Place an outbound phone call

Dials `to` FROM one of your voice-enabled numbers and, on answer, bridges the callee to the number's stored forward destination, or to the per-call `forwardTo` override. Destinations can be your own AI voice agent (Vapi/Retell), a phone, or a SIP endpoint. An optional `greeting` is spoken to the callee before the bridge.  The 200 response means the call is dialing; the lifecycle continues asynchronously (track it via `GET /v1/voice/calls/{id}` or the `call.*` webhooks). Outbound calls are capped per rolling hour (429 when hit).  **Idempotency:** send an `Idempotency-Key` header to make retries safe; same key + same body replays the original response instead of dialing (and billing) a second call. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
create_voice_call_request = Zernio::CreateVoiceCallRequest.new({to: 'to_example'}) # CreateVoiceCallRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes dial retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Place an outbound phone call
  result = api_instance.create_voice_call(create_voice_call_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->create_voice_call: #{e}"
end
```

#### Using the create_voice_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVoiceCall200Response>, Integer, Hash)> create_voice_call_with_http_info(create_voice_call_request, opts)

```ruby
begin
  # Place an outbound phone call
  data, status_code, headers = api_instance.create_voice_call_with_http_info(create_voice_call_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVoiceCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->create_voice_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_voice_call_request** | [**CreateVoiceCallRequest**](CreateVoiceCallRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes dial retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**CreateVoiceCall200Response**](CreateVoiceCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_voice_web_session

> <CreateVoiceWebSession200Response> create_voice_web_session

Mint a browser softphone session

Step 1 of the two-step browser softphone handshake. Mints a WebRTC session (token + credential) the browser registers with the `@telnyx/webrtc` SDK. Once registered, call `POST /v1/voice/calls/web/dial` with the returned `credentialId` to place the call. The split avoids bridging to a browser that has not finished registering. The token lives ~1 hour (it must outlive the whole call, not just the handshake). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new

begin
  # Mint a browser softphone session
  result = api_instance.create_voice_web_session
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->create_voice_web_session: #{e}"
end
```

#### Using the create_voice_web_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVoiceWebSession200Response>, Integer, Hash)> create_voice_web_session_with_http_info

```ruby
begin
  # Mint a browser softphone session
  data, status_code, headers = api_instance.create_voice_web_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVoiceWebSession200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->create_voice_web_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateVoiceWebSession200Response**](CreateVoiceWebSession200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dial_voice_web_call

> <DialVoiceWebCall200Response> dial_voice_web_call(dial_voice_web_call_request)

Dial from the browser softphone

Step 2 of the browser softphone handshake: places an outbound call whose answered leg is bridged to the browser registered with the credential from `POST /v1/voice/calls/web`. The call runs through the normal outbound lane, so it is logged as outbound (from = your number, to = target) and recorded per the number's settings. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
dial_voice_web_call_request = Zernio::DialVoiceWebCallRequest.new({to: 'to_example', credential_id: 'credential_id_example'}) # DialVoiceWebCallRequest | 

begin
  # Dial from the browser softphone
  result = api_instance.dial_voice_web_call(dial_voice_web_call_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->dial_voice_web_call: #{e}"
end
```

#### Using the dial_voice_web_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DialVoiceWebCall200Response>, Integer, Hash)> dial_voice_web_call_with_http_info(dial_voice_web_call_request)

```ruby
begin
  # Dial from the browser softphone
  data, status_code, headers = api_instance.dial_voice_web_call_with_http_info(dial_voice_web_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DialVoiceWebCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->dial_voice_web_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dial_voice_web_call_request** | [**DialVoiceWebCallRequest**](DialVoiceWebCallRequest.md) |  |  |

### Return type

[**DialVoiceWebCall200Response**](DialVoiceWebCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_voice_on_number

> <DisableVoiceOnNumber200Response> disable_voice_on_number(id)

Disable phone calling on a number

Turns off PSTN calling for the number. The stored forward destination and settings are preserved, so re-enabling restores the prior config. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | 

begin
  # Disable phone calling on a number
  result = api_instance.disable_voice_on_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->disable_voice_on_number: #{e}"
end
```

#### Using the disable_voice_on_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableVoiceOnNumber200Response>, Integer, Hash)> disable_voice_on_number_with_http_info(id)

```ruby
begin
  # Disable phone calling on a number
  data, status_code, headers = api_instance.disable_voice_on_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableVoiceOnNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->disable_voice_on_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DisableVoiceOnNumber200Response**](DisableVoiceOnNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_voice_on_number

> <EnableVoiceOnNumber200Response> enable_voice_on_number(id, opts)

Enable phone calling on a number

Turns on regular phone (PSTN) calling for one of your numbers and configures how inbound calls are handled. Inbound calls route to `forwardTo`: your own AI voice agent (Vapi/Retell), a phone, or a SIP endpoint. Optional extras: voicemail, business-hours windows, an IVR menu, a caller blocklist, recording, and transcription. A number can also be voice-enabled with no forward (outbound-only).  Idempotent, and doubles as the settings update: only fields present in the body are written. Omitting `forwardTo` preserves the current destination; sending an empty string clears it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | Phone number record ID (from GET /v1/phone-numbers).
opts = {
  enable_voice_on_number_request: Zernio::EnableVoiceOnNumberRequest.new # EnableVoiceOnNumberRequest | 
}

begin
  # Enable phone calling on a number
  result = api_instance.enable_voice_on_number(id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->enable_voice_on_number: #{e}"
end
```

#### Using the enable_voice_on_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableVoiceOnNumber200Response>, Integer, Hash)> enable_voice_on_number_with_http_info(id, opts)

```ruby
begin
  # Enable phone calling on a number
  data, status_code, headers = api_instance.enable_voice_on_number_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableVoiceOnNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->enable_voice_on_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID (from GET /v1/phone-numbers). |  |
| **enable_voice_on_number_request** | [**EnableVoiceOnNumberRequest**](EnableVoiceOnNumberRequest.md) |  | [optional] |

### Return type

[**EnableVoiceOnNumber200Response**](EnableVoiceOnNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## end_voice_call

> <EndVoiceCall200Response> end_voice_call(id)

Hang up a live call

Hangs up a live call on demand. Idempotent: ending a call that already ended (or never connected) returns success with the call's current status. Final duration/cost are written asynchronously when the hangup event lands, so the call doc may briefly still show its prior status. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | 

begin
  # Hang up a live call
  result = api_instance.end_voice_call(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->end_voice_call: #{e}"
end
```

#### Using the end_voice_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EndVoiceCall200Response>, Integer, Hash)> end_voice_call_with_http_info(id)

```ruby
begin
  # Hang up a live call
  data, status_code, headers = api_instance.end_voice_call_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EndVoiceCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->end_voice_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**EndVoiceCall200Response**](EndVoiceCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voice_call

> <GetVoiceCall200Response> get_voice_call(id)

Get a phone call

Full call detail, including the transcript segments when transcription was on.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | 

begin
  # Get a phone call
  result = api_instance.get_voice_call(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call: #{e}"
end
```

#### Using the get_voice_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVoiceCall200Response>, Integer, Hash)> get_voice_call_with_http_info(id)

```ruby
begin
  # Get a phone call
  data, status_code, headers = api_instance.get_voice_call_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVoiceCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetVoiceCall200Response**](GetVoiceCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voice_call_estimate

> <GetVoiceCallEstimate200Response> get_voice_call_estimate(to, opts)

Estimate call cost

Pre-call cost estimate for a PSTN call: the carrier leg plus optional recording and transcription add-ons. Same billing formula as the post-call invoice, so the quote and the final charge can't disagree. The per-minute figure is deliberately conservative (the real cost comes from the settled carrier record after the call), so estimates trend slightly over the actual invoice. Parity endpoint of `GET /v1/whatsapp/calls/estimate`, minus the Meta line (PSTN calls have no separate Meta bill, so `totalCostUSD` equals `billableCostUSD`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
to = 'to_example' # String | Destination number, E.164 (leading + optional).
opts = {
  minutes: 56, # Integer | 
  recording: true, # Boolean | 
  transcription: true # Boolean | 
}

begin
  # Estimate call cost
  result = api_instance.get_voice_call_estimate(to, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call_estimate: #{e}"
end
```

#### Using the get_voice_call_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVoiceCallEstimate200Response>, Integer, Hash)> get_voice_call_estimate_with_http_info(to, opts)

```ruby
begin
  # Estimate call cost
  data, status_code, headers = api_instance.get_voice_call_estimate_with_http_info(to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVoiceCallEstimate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call_estimate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | Destination number, E.164 (leading + optional). |  |
| **minutes** | **Integer** |  | [optional][default to 1] |
| **recording** | **Boolean** |  | [optional] |
| **transcription** | **Boolean** |  | [optional] |

### Return type

[**GetVoiceCallEstimate200Response**](GetVoiceCallEstimate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voice_call_recording

> <GetWhatsAppCallRecording200Response> get_voice_call_recording(id, opts)

Get a call recording

Resolves a fresh, playable MP3 URL for the call's recording (provider-signed URLs expire ~10 minutes after signing, so this endpoint re-signs on demand). Default responds `302 Found` redirecting to the fresh URL; pass `as=json` to receive `{ url }` instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | 
opts = {
  as: 'json' # String | `json` returns `{ url }` instead of a 302 redirect.
}

begin
  # Get a call recording
  result = api_instance.get_voice_call_recording(id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call_recording: #{e}"
end
```

#### Using the get_voice_call_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallRecording200Response>, Integer, Hash)> get_voice_call_recording_with_http_info(id, opts)

```ruby
begin
  # Get a call recording
  data, status_code, headers = api_instance.get_voice_call_recording_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallRecording200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->get_voice_call_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **as** | **String** | &#x60;json&#x60; returns &#x60;{ url }&#x60; instead of a 302 redirect. | [optional] |

### Return type

[**GetWhatsAppCallRecording200Response**](GetWhatsAppCallRecording200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_voice_calls

> <ListVoiceCalls200Response> list_voice_calls(opts)

List phone calls

Your PSTN voice calls (inbound + outbound), newest first. Cursor pagination: pass the returned `nextCursor` as `before` for the next page. For a history that also includes WhatsApp calls, use `GET /v1/calls`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
opts = {
  status: 'ringing', # String | 
  direction: 'inbound', # String | 
  number: 'number_example', # String | Exact filter: calls involving this number (typically one of your DIDs). E.164, leading + optional.
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  limit: 56 # Integer | 
}

begin
  # List phone calls
  result = api_instance.list_voice_calls(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->list_voice_calls: #{e}"
end
```

#### Using the list_voice_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVoiceCalls200Response>, Integer, Hash)> list_voice_calls_with_http_info(opts)

```ruby
begin
  # List phone calls
  data, status_code, headers = api_instance.list_voice_calls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVoiceCalls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->list_voice_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **number** | **String** | Exact filter: calls involving this number (typically one of your DIDs). E.164, leading + optional. | [optional] |
| **before** | **Time** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListVoiceCalls200Response**](ListVoiceCalls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transfer_voice_call

> <TransferVoiceCall200Response> transfer_voice_call(id, transfer_voice_call_request)

Blind-transfer a live call

Moves the call's current leg to a new destination (a phone number or a SIP endpoint). This is a BLIND transfer: control of the leg is handed off and the call ends normally when the transferred leg hangs up. The caller ID presented on the transfer leg is always your own number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VoiceApi.new
id = 'id_example' # String | 
transfer_voice_call_request = Zernio::TransferVoiceCallRequest.new({to: 'to_example'}) # TransferVoiceCallRequest | 

begin
  # Blind-transfer a live call
  result = api_instance.transfer_voice_call(id, transfer_voice_call_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->transfer_voice_call: #{e}"
end
```

#### Using the transfer_voice_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferVoiceCall200Response>, Integer, Hash)> transfer_voice_call_with_http_info(id, transfer_voice_call_request)

```ruby
begin
  # Blind-transfer a live call
  data, status_code, headers = api_instance.transfer_voice_call_with_http_info(id, transfer_voice_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferVoiceCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VoiceApi->transfer_voice_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **transfer_voice_call_request** | [**TransferVoiceCallRequest**](TransferVoiceCallRequest.md) |  |  |

### Return type

[**TransferVoiceCall200Response**](TransferVoiceCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

