# Zernio::WhatsAppFlowsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_whats_app_flow**](WhatsAppFlowsApi.md#create_whats_app_flow) | **POST** /v1/whatsapp/flows | Create flow |
| [**delete_whats_app_flow**](WhatsAppFlowsApi.md#delete_whats_app_flow) | **DELETE** /v1/whatsapp/flows/{flowId} | Delete flow |
| [**deprecate_whats_app_flow**](WhatsAppFlowsApi.md#deprecate_whats_app_flow) | **POST** /v1/whatsapp/flows/{flowId}/deprecate | Deprecate flow |
| [**get_whats_app_flow**](WhatsAppFlowsApi.md#get_whats_app_flow) | **GET** /v1/whatsapp/flows/{flowId} | Get flow |
| [**get_whats_app_flow_json**](WhatsAppFlowsApi.md#get_whats_app_flow_json) | **GET** /v1/whatsapp/flows/{flowId}/json | Get flow JSON asset |
| [**list_whats_app_flows**](WhatsAppFlowsApi.md#list_whats_app_flows) | **GET** /v1/whatsapp/flows | List flows |
| [**publish_whats_app_flow**](WhatsAppFlowsApi.md#publish_whats_app_flow) | **POST** /v1/whatsapp/flows/{flowId}/publish | Publish flow |
| [**send_whats_app_flow_message**](WhatsAppFlowsApi.md#send_whats_app_flow_message) | **POST** /v1/whatsapp/flows/send | Send flow message |
| [**update_whats_app_flow**](WhatsAppFlowsApi.md#update_whats_app_flow) | **PATCH** /v1/whatsapp/flows/{flowId} | Update flow |
| [**upload_whats_app_flow_json**](WhatsAppFlowsApi.md#upload_whats_app_flow_json) | **PUT** /v1/whatsapp/flows/{flowId}/json | Upload flow JSON |


## create_whats_app_flow

> <CreateWhatsAppFlow200Response> create_whats_app_flow(create_whats_app_flow_request)

Create flow

Create a new WhatsApp Flow in DRAFT status. Optionally clone an existing flow. After creating, upload a Flow JSON definition, then publish to make it sendable. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
create_whats_app_flow_request = Zernio::CreateWhatsAppFlowRequest.new({account_id: 'account_id_example', name: 'name_example', categories: ['SIGN_UP']}) # CreateWhatsAppFlowRequest | 

begin
  # Create flow
  result = api_instance.create_whats_app_flow(create_whats_app_flow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->create_whats_app_flow: #{e}"
end
```

#### Using the create_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppFlow200Response>, Integer, Hash)> create_whats_app_flow_with_http_info(create_whats_app_flow_request)

```ruby
begin
  # Create flow
  data, status_code, headers = api_instance.create_whats_app_flow_with_http_info(create_whats_app_flow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppFlow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->create_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_flow_request** | [**CreateWhatsAppFlowRequest**](CreateWhatsAppFlowRequest.md) |  |  |

### Return type

[**CreateWhatsAppFlow200Response**](CreateWhatsAppFlow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_whats_app_flow

> <UpdateYoutubeDefaultPlaylist200Response> delete_whats_app_flow(flow_id, account_id)

Delete flow

Delete a DRAFT flow. This is irreversible. Only flows in DRAFT status can be deleted. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Delete flow
  result = api_instance.delete_whats_app_flow(flow_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->delete_whats_app_flow: #{e}"
end
```

#### Using the delete_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_whats_app_flow_with_http_info(flow_id, account_id)

```ruby
begin
  # Delete flow
  data, status_code, headers = api_instance.delete_whats_app_flow_with_http_info(flow_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->delete_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deprecate_whats_app_flow

> <UpdateYoutubeDefaultPlaylist200Response> deprecate_whats_app_flow(flow_id, publish_whats_app_flow_request)

Deprecate flow

Deprecate a PUBLISHED flow. This is irreversible. Deprecated flows cannot be sent or opened, but existing active sessions may continue until they complete. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
publish_whats_app_flow_request = Zernio::PublishWhatsAppFlowRequest.new({account_id: 'account_id_example'}) # PublishWhatsAppFlowRequest | 

begin
  # Deprecate flow
  result = api_instance.deprecate_whats_app_flow(flow_id, publish_whats_app_flow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->deprecate_whats_app_flow: #{e}"
end
```

#### Using the deprecate_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> deprecate_whats_app_flow_with_http_info(flow_id, publish_whats_app_flow_request)

```ruby
begin
  # Deprecate flow
  data, status_code, headers = api_instance.deprecate_whats_app_flow_with_http_info(flow_id, publish_whats_app_flow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->deprecate_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **publish_whats_app_flow_request** | [**PublishWhatsAppFlowRequest**](PublishWhatsAppFlowRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_whats_app_flow

> <GetWhatsAppFlow200Response> get_whats_app_flow(flow_id, account_id, opts)

Get flow

Get details for a specific flow, including status, categories, validation errors, and preview URL. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
account_id = 'account_id_example' # String | WhatsApp social account ID
opts = {
  fields: 'fields_example' # String | Comma-separated fields to return (default: id,name,status,categories,validation_errors,json_version,preview,data_api_version,endpoint_uri)
}

begin
  # Get flow
  result = api_instance.get_whats_app_flow(flow_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->get_whats_app_flow: #{e}"
end
```

#### Using the get_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppFlow200Response>, Integer, Hash)> get_whats_app_flow_with_http_info(flow_id, account_id, opts)

```ruby
begin
  # Get flow
  data, status_code, headers = api_instance.get_whats_app_flow_with_http_info(flow_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppFlow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->get_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **fields** | **String** | Comma-separated fields to return (default: id,name,status,categories,validation_errors,json_version,preview,data_api_version,endpoint_uri) | [optional] |

### Return type

[**GetWhatsAppFlow200Response**](GetWhatsAppFlow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_flow_json

> <GetWhatsAppFlowJson200Response> get_whats_app_flow_json(flow_id, account_id)

Get flow JSON asset

Get the flow JSON asset metadata, including a temporary download URL for the Flow JSON file. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get flow JSON asset
  result = api_instance.get_whats_app_flow_json(flow_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->get_whats_app_flow_json: #{e}"
end
```

#### Using the get_whats_app_flow_json_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppFlowJson200Response>, Integer, Hash)> get_whats_app_flow_json_with_http_info(flow_id, account_id)

```ruby
begin
  # Get flow JSON asset
  data, status_code, headers = api_instance.get_whats_app_flow_json_with_http_info(flow_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppFlowJson200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->get_whats_app_flow_json_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppFlowJson200Response**](GetWhatsAppFlowJson200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_flows

> <ListWhatsAppFlows200Response> list_whats_app_flows(account_id)

List flows

List all WhatsApp Flows for the Business Account (WABA) associated with the given account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # List flows
  result = api_instance.list_whats_app_flows(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->list_whats_app_flows: #{e}"
end
```

#### Using the list_whats_app_flows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppFlows200Response>, Integer, Hash)> list_whats_app_flows_with_http_info(account_id)

```ruby
begin
  # List flows
  data, status_code, headers = api_instance.list_whats_app_flows_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppFlows200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->list_whats_app_flows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**ListWhatsAppFlows200Response**](ListWhatsAppFlows200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## publish_whats_app_flow

> <UpdateYoutubeDefaultPlaylist200Response> publish_whats_app_flow(flow_id, publish_whats_app_flow_request)

Publish flow

Publish a DRAFT flow. This is irreversible. Once published, the flow and its JSON become immutable and the flow can be sent to users. To update a published flow, create a new flow (optionally cloning this one via cloneFlowId). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
publish_whats_app_flow_request = Zernio::PublishWhatsAppFlowRequest.new({account_id: 'account_id_example'}) # PublishWhatsAppFlowRequest | 

begin
  # Publish flow
  result = api_instance.publish_whats_app_flow(flow_id, publish_whats_app_flow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->publish_whats_app_flow: #{e}"
end
```

#### Using the publish_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> publish_whats_app_flow_with_http_info(flow_id, publish_whats_app_flow_request)

```ruby
begin
  # Publish flow
  data, status_code, headers = api_instance.publish_whats_app_flow_with_http_info(flow_id, publish_whats_app_flow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->publish_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **publish_whats_app_flow_request** | [**PublishWhatsAppFlowRequest**](PublishWhatsAppFlowRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_whats_app_flow_message

> <SendWhatsAppFlowMessage200Response> send_whats_app_flow_message(send_whats_app_flow_message_request)

Send flow message

Send a published flow as an interactive message with a CTA button. When the recipient taps the button, the flow opens natively in WhatsApp. Flow responses are received via webhooks. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
send_whats_app_flow_message_request = Zernio::SendWhatsAppFlowMessageRequest.new({account_id: 'account_id_example', to: 'to_example', flow_id: 'flow_id_example', flow_cta: 'flow_cta_example', body: 'body_example'}) # SendWhatsAppFlowMessageRequest | 

begin
  # Send flow message
  result = api_instance.send_whats_app_flow_message(send_whats_app_flow_message_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->send_whats_app_flow_message: #{e}"
end
```

#### Using the send_whats_app_flow_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendWhatsAppFlowMessage200Response>, Integer, Hash)> send_whats_app_flow_message_with_http_info(send_whats_app_flow_message_request)

```ruby
begin
  # Send flow message
  data, status_code, headers = api_instance.send_whats_app_flow_message_with_http_info(send_whats_app_flow_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendWhatsAppFlowMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->send_whats_app_flow_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_whats_app_flow_message_request** | [**SendWhatsAppFlowMessageRequest**](SendWhatsAppFlowMessageRequest.md) |  |  |

### Return type

[**SendWhatsAppFlowMessage200Response**](SendWhatsAppFlowMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_flow

> <UpdateYoutubeDefaultPlaylist200Response> update_whats_app_flow(flow_id, update_whats_app_flow_request)

Update flow

Update metadata (name, categories) of a DRAFT flow. Published flows are immutable. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
update_whats_app_flow_request = Zernio::UpdateWhatsAppFlowRequest.new({account_id: 'account_id_example'}) # UpdateWhatsAppFlowRequest | 

begin
  # Update flow
  result = api_instance.update_whats_app_flow(flow_id, update_whats_app_flow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->update_whats_app_flow: #{e}"
end
```

#### Using the update_whats_app_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> update_whats_app_flow_with_http_info(flow_id, update_whats_app_flow_request)

```ruby
begin
  # Update flow
  data, status_code, headers = api_instance.update_whats_app_flow_with_http_info(flow_id, update_whats_app_flow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->update_whats_app_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **update_whats_app_flow_request** | [**UpdateWhatsAppFlowRequest**](UpdateWhatsAppFlowRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_whats_app_flow_json

> <UploadWhatsAppFlowJson200Response> upload_whats_app_flow_json(flow_id, upload_whats_app_flow_json_request)

Upload flow JSON

Upload or update the Flow JSON for a DRAFT flow. The Flow JSON defines all screens, components (text inputs, dropdowns, date pickers, etc.), and navigation.  Meta validates the JSON on upload and returns any validation errors. See: https://developers.facebook.com/docs/whatsapp/flows/reference/flowjson 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppFlowsApi.new
flow_id = 'flow_id_example' # String | Flow ID
upload_whats_app_flow_json_request = Zernio::UploadWhatsAppFlowJsonRequest.new({account_id: 'account_id_example', flow_json: nil}) # UploadWhatsAppFlowJsonRequest | 

begin
  # Upload flow JSON
  result = api_instance.upload_whats_app_flow_json(flow_id, upload_whats_app_flow_json_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->upload_whats_app_flow_json: #{e}"
end
```

#### Using the upload_whats_app_flow_json_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadWhatsAppFlowJson200Response>, Integer, Hash)> upload_whats_app_flow_json_with_http_info(flow_id, upload_whats_app_flow_json_request)

```ruby
begin
  # Upload flow JSON
  data, status_code, headers = api_instance.upload_whats_app_flow_json_with_http_info(flow_id, upload_whats_app_flow_json_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadWhatsAppFlowJson200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppFlowsApi->upload_whats_app_flow_json_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** | Flow ID |  |
| **upload_whats_app_flow_json_request** | [**UploadWhatsAppFlowJsonRequest**](UploadWhatsAppFlowJsonRequest.md) |  |  |

### Return type

[**UploadWhatsAppFlowJson200Response**](UploadWhatsAppFlowJson200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

