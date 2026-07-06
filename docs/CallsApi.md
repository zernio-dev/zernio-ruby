# Zernio::CallsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_call**](CallsApi.md#get_call) | **GET** /v1/calls/{id} | Get a call (any channel) |
| [**get_call_recording**](CallsApi.md#get_call_recording) | **GET** /v1/calls/{id}/recording | Get a call recording (any channel) |
| [**list_calls**](CallsApi.md#list_calls) | **GET** /v1/calls | List all calls (unified history) |


## get_call

> <GetCall200Response> get_call(id)

Get a call (any channel)

Channel-agnostic call detail: works for both WhatsApp and regular phone (PSTN) calls, so any row from `GET /v1/calls` can be opened without branching on `channel`. Returns the full call including transcript segments, with `contactId`/`contactName` set when the counterparty matches a CRM contact. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CallsApi.new
id = 'id_example' # String | 

begin
  # Get a call (any channel)
  result = api_instance.get_call(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->get_call: #{e}"
end
```

#### Using the get_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCall200Response>, Integer, Hash)> get_call_with_http_info(id)

```ruby
begin
  # Get a call (any channel)
  data, status_code, headers = api_instance.get_call_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->get_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetCall200Response**](GetCall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_recording

> <GetWhatsAppCallRecording200Response> get_call_recording(id, opts)

Get a call recording (any channel)

Channel-agnostic recording fetch: resolves a fresh, playable MP3 URL for any call regardless of channel (provider-signed URLs expire ~10 minutes after signing, so this re-signs on demand). Default responds `302 Found` redirecting to the fresh URL; pass `as=json` to receive `{ url }` instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CallsApi.new
id = 'id_example' # String | 
opts = {
  as: 'json' # String | `json` returns `{ url }` instead of a 302 redirect.
}

begin
  # Get a call recording (any channel)
  result = api_instance.get_call_recording(id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->get_call_recording: #{e}"
end
```

#### Using the get_call_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppCallRecording200Response>, Integer, Hash)> get_call_recording_with_http_info(id, opts)

```ruby
begin
  # Get a call recording (any channel)
  data, status_code, headers = api_instance.get_call_recording_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppCallRecording200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->get_call_recording_with_http_info: #{e}"
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


## list_calls

> <ListCalls200Response> list_calls(opts)

List all calls (unified history)

Unified call history across ALL of your numbers: both channels (WhatsApp Business Calling + regular phone/PSTN), inbound and outbound, newest first. Unlike `GET /v1/voice/calls` (PSTN-only) and `GET /v1/whatsapp/calls` (one account at a time), this endpoint needs no `accountId` and never requires fanning out one request per number.  Any row can be opened channel-agnostically via `GET /v1/calls/{id}` and `GET /v1/calls/{id}/recording`; no branching on `channel` needed. When the counterparty number matches a CRM contact, `contactId` and `contactName` are set.  Cursor pagination: pass the returned `nextCursor` as `before` to fetch the next page. `nextCursor` is null on the last page. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CallsApi.new
opts = {
  channel: 'whatsapp', # String | 
  status: 'ringing', # String | 
  direction: 'inbound', # String | 
  number: 'number_example', # String | Exact filter: calls involving this number (typically one of YOUR numbers, to scope history to a single line). E.164, leading + optional.
  search: 'search_example', # String | Free-text match on the from/to numbers. Non-digits are stripped, so partial queries like `302` or `+1 302` work.
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Return calls with startedAt strictly before this instant (use the previous page's nextCursor).
  limit: 56 # Integer | 
}

begin
  # List all calls (unified history)
  result = api_instance.list_calls(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->list_calls: #{e}"
end
```

#### Using the list_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCalls200Response>, Integer, Hash)> list_calls_with_http_info(opts)

```ruby
begin
  # List all calls (unified history)
  data, status_code, headers = api_instance.list_calls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCalls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CallsApi->list_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **number** | **String** | Exact filter: calls involving this number (typically one of YOUR numbers, to scope history to a single line). E.164, leading + optional. | [optional] |
| **search** | **String** | Free-text match on the from/to numbers. Non-digits are stripped, so partial queries like &#x60;302&#x60; or &#x60;+1 302&#x60; work. | [optional] |
| **before** | **Time** | Return calls with startedAt strictly before this instant (use the previous page&#39;s nextCursor). | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListCalls200Response**](ListCalls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

