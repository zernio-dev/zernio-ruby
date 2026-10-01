# Zernio::RCSApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_rcs_test_device**](RCSApi.md#add_rcs_test_device) | **POST** /v1/rcs/agents/{agentId}/test-devices | Invite an RCS test phone |
| [**create_rcs_agent**](RCSApi.md#create_rcs_agent) | **POST** /v1/rcs/agents | Request an RCS agent |
| [**deactivate_rcs_agent**](RCSApi.md#deactivate_rcs_agent) | **DELETE** /v1/rcs/agents/{agentId} | Deactivate an RCS agent |
| [**get_rcs_agent**](RCSApi.md#get_rcs_agent) | **GET** /v1/rcs/agents/{agentId} | Get an RCS agent |
| [**get_rcs_capabilities**](RCSApi.md#get_rcs_capabilities) | **GET** /v1/rcs/capabilities | Check RCS capability |
| [**list_rcs_agents**](RCSApi.md#list_rcs_agents) | **GET** /v1/rcs/agents | List RCS agents |
| [**list_rcs_brands**](RCSApi.md#list_rcs_brands) | **GET** /v1/rcs/brands | List RCS brands |
| [**list_rcs_test_devices**](RCSApi.md#list_rcs_test_devices) | **GET** /v1/rcs/agents/{agentId}/test-devices | List RCS test phones |
| [**remove_rcs_test_device**](RCSApi.md#remove_rcs_test_device) | **DELETE** /v1/rcs/agents/{agentId}/test-devices/{testDeviceId} | Remove an RCS test phone |
| [**request_rcs_agent_launch**](RCSApi.md#request_rcs_agent_launch) | **POST** /v1/rcs/agents/{agentId}/launch-request | Send the launch filing |
| [**send_rcs_message**](RCSApi.md#send_rcs_message) | **POST** /v1/rcs/messages | Send an RCS message |
| [**update_rcs_agent**](RCSApi.md#update_rcs_agent) | **PATCH** /v1/rcs/agents/{agentId} | Update an RCS agent |
| [**upload_rcs_asset**](RCSApi.md#upload_rcs_asset) | **POST** /v1/rcs/assets | Upload an RCS logo or banner |


## add_rcs_test_device

> <AddRcsTestDevice201Response> add_rcs_test_device(agent_id, add_rcs_test_device_request)

Invite an RCS test phone

Invites a phone to try the agent before launch. It must accept the invite in its messaging app. Available once the agent exists with the carriers (after brand vetting). T-Mobile and AT&T numbers cannot be test phones. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 
add_rcs_test_device_request = Zernio::AddRcsTestDeviceRequest.new({phone_number: 'phone_number_example'}) # AddRcsTestDeviceRequest | 

begin
  # Invite an RCS test phone
  result = api_instance.add_rcs_test_device(agent_id, add_rcs_test_device_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->add_rcs_test_device: #{e}"
end
```

#### Using the add_rcs_test_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddRcsTestDevice201Response>, Integer, Hash)> add_rcs_test_device_with_http_info(agent_id, add_rcs_test_device_request)

```ruby
begin
  # Invite an RCS test phone
  data, status_code, headers = api_instance.add_rcs_test_device_with_http_info(agent_id, add_rcs_test_device_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddRcsTestDevice201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->add_rcs_test_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **add_rcs_test_device_request** | [**AddRcsTestDeviceRequest**](AddRcsTestDeviceRequest.md) |  |  |

### Return type

[**AddRcsTestDevice201Response**](AddRcsTestDevice201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rcs_agent

> <CreateRcsAgent201Response> create_rcs_agent(create_rcs_agent_request, opts)

Request an RCS agent

Requests a new agent for a profile, with a new company (`brand`) or an existing one (`brandId`, skips vetting when it is already verified). The request lands in our review: nothing is filed with the carriers or billed until we submit it. A profile can hold several agents. Requires usage-based billing and a card on file. Send an `Idempotency-Key` header to make retries safe. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
create_rcs_agent_request = Zernio::CreateRcsAgentRequest.new({profile_id: 'profile_id_example', display_name: 'display_name_example', use_case: 'MULTI_USE', profile: Zernio::RcsAgentProfile.new({description: 'description_example', logo_url: 'logo_url_example', hero_url: 'hero_url_example', brand_color: 'brand_color_example', privacy_policy_url: 'privacy_policy_url_example', terms_url: 'terms_url_example'})}) # CreateRcsAgentRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Request an RCS agent
  result = api_instance.create_rcs_agent(create_rcs_agent_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->create_rcs_agent: #{e}"
end
```

#### Using the create_rcs_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRcsAgent201Response>, Integer, Hash)> create_rcs_agent_with_http_info(create_rcs_agent_request, opts)

```ruby
begin
  # Request an RCS agent
  data, status_code, headers = api_instance.create_rcs_agent_with_http_info(create_rcs_agent_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRcsAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->create_rcs_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_rcs_agent_request** | [**CreateRcsAgentRequest**](CreateRcsAgentRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**CreateRcsAgent201Response**](CreateRcsAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_rcs_agent

> <CreateRcsAgent201Response> deactivate_rcs_agent(agent_id)

Deactivate an RCS agent

Stops sending, disconnects its inbox account and stops monthly billing. Fees already charged are not refunded.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 

begin
  # Deactivate an RCS agent
  result = api_instance.deactivate_rcs_agent(agent_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->deactivate_rcs_agent: #{e}"
end
```

#### Using the deactivate_rcs_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRcsAgent201Response>, Integer, Hash)> deactivate_rcs_agent_with_http_info(agent_id)

```ruby
begin
  # Deactivate an RCS agent
  data, status_code, headers = api_instance.deactivate_rcs_agent_with_http_info(agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRcsAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->deactivate_rcs_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |

### Return type

[**CreateRcsAgent201Response**](CreateRcsAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rcs_agent

> <CreateRcsAgent201Response> get_rcs_agent(agent_id)

Get an RCS agent

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 

begin
  # Get an RCS agent
  result = api_instance.get_rcs_agent(agent_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->get_rcs_agent: #{e}"
end
```

#### Using the get_rcs_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRcsAgent201Response>, Integer, Hash)> get_rcs_agent_with_http_info(agent_id)

```ruby
begin
  # Get an RCS agent
  data, status_code, headers = api_instance.get_rcs_agent_with_http_info(agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRcsAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->get_rcs_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |

### Return type

[**CreateRcsAgent201Response**](CreateRcsAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rcs_capabilities

> <GetRcsCapabilities200Response> get_rcs_capabilities(agent_id, numbers)

Check RCS capability

Which recipients can receive RCS from the agent and which rich features their phones support. Up to 100 numbers.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 
numbers = 'numbers_example' # String | Comma-separated E.164 numbers, max 100.

begin
  # Check RCS capability
  result = api_instance.get_rcs_capabilities(agent_id, numbers)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->get_rcs_capabilities: #{e}"
end
```

#### Using the get_rcs_capabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRcsCapabilities200Response>, Integer, Hash)> get_rcs_capabilities_with_http_info(agent_id, numbers)

```ruby
begin
  # Check RCS capability
  data, status_code, headers = api_instance.get_rcs_capabilities_with_http_info(agent_id, numbers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRcsCapabilities200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->get_rcs_capabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **numbers** | **String** | Comma-separated E.164 numbers, max 100. |  |

### Return type

[**GetRcsCapabilities200Response**](GetRcsCapabilities200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rcs_agents

> <ListRcsAgents200Response> list_rcs_agents(opts)

List RCS agents

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
opts = {
  include_closed: true # Boolean | Include rejected and deactivated agents.
}

begin
  # List RCS agents
  result = api_instance.list_rcs_agents(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_agents: #{e}"
end
```

#### Using the list_rcs_agents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRcsAgents200Response>, Integer, Hash)> list_rcs_agents_with_http_info(opts)

```ruby
begin
  # List RCS agents
  data, status_code, headers = api_instance.list_rcs_agents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRcsAgents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_agents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_closed** | **Boolean** | Include rejected and deactivated agents. | [optional] |

### Return type

[**ListRcsAgents200Response**](ListRcsAgents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rcs_brands

> <ListRcsBrands200Response> list_rcs_brands

List RCS brands

The team's RCS brands (vetted companies), to reuse one for another agent with `brandId`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new

begin
  # List RCS brands
  result = api_instance.list_rcs_brands
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_brands: #{e}"
end
```

#### Using the list_rcs_brands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRcsBrands200Response>, Integer, Hash)> list_rcs_brands_with_http_info

```ruby
begin
  # List RCS brands
  data, status_code, headers = api_instance.list_rcs_brands_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRcsBrands200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_brands_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListRcsBrands200Response**](ListRcsBrands200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rcs_test_devices

> <ListRcsTestDevices200Response> list_rcs_test_devices(agent_id)

List RCS test phones

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 

begin
  # List RCS test phones
  result = api_instance.list_rcs_test_devices(agent_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_test_devices: #{e}"
end
```

#### Using the list_rcs_test_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRcsTestDevices200Response>, Integer, Hash)> list_rcs_test_devices_with_http_info(agent_id)

```ruby
begin
  # List RCS test phones
  data, status_code, headers = api_instance.list_rcs_test_devices_with_http_info(agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRcsTestDevices200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->list_rcs_test_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |

### Return type

[**ListRcsTestDevices200Response**](ListRcsTestDevices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_rcs_test_device

> <UpdateYoutubeDefaultPlaylist200Response> remove_rcs_test_device(agent_id, test_device_id)

Remove an RCS test phone

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 
test_device_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Remove an RCS test phone
  result = api_instance.remove_rcs_test_device(agent_id, test_device_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->remove_rcs_test_device: #{e}"
end
```

#### Using the remove_rcs_test_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> remove_rcs_test_device_with_http_info(agent_id, test_device_id)

```ruby
begin
  # Remove an RCS test phone
  data, status_code, headers = api_instance.remove_rcs_test_device_with_http_info(agent_id, test_device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->remove_rcs_test_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **test_device_id** | **String** |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_rcs_agent_launch

> <CreateRcsAgent201Response> request_rcs_agent_launch(agent_id, rcs_launch_request)

Send the launch filing

Sends the launch details the carriers review (campaign, consent and a public test video). US agents send them once they are in `testing`; we review them before they reach the carriers. Agents in other markets send them while still in review (`requested`, `changes_requested` or `brand_vetting`), because we file everything with the carriers at once; this saves the details without changing the status. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 
rcs_launch_request = Zernio::RcsLaunchRequest.new({company_overview: 'company_overview_example', agent_overview: 'agent_overview_example', interactions: [Zernio::RcsLaunchRequestInteractionsInner.new({type: 'TRANSACTIONAL_UPDATES'})], message_examples: ['message_examples_example'], consent: Zernio::RcsLaunchRequestConsent.new({opt_in_methods: [Zernio::RcsLaunchRequestConsentOptInMethodsInner.new({type: 'SMS'})], call_to_action: 'call_to_action_example', double_opt_in: false, opt_in_message: 'opt_in_message_example', help_response: 'help_response_example', opt_out_response: 'opt_out_response_example'}), test_video_url: 'test_video_url_example'}) # RcsLaunchRequest | 

begin
  # Send the launch filing
  result = api_instance.request_rcs_agent_launch(agent_id, rcs_launch_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->request_rcs_agent_launch: #{e}"
end
```

#### Using the request_rcs_agent_launch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRcsAgent201Response>, Integer, Hash)> request_rcs_agent_launch_with_http_info(agent_id, rcs_launch_request)

```ruby
begin
  # Send the launch filing
  data, status_code, headers = api_instance.request_rcs_agent_launch_with_http_info(agent_id, rcs_launch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRcsAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->request_rcs_agent_launch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **rcs_launch_request** | [**RcsLaunchRequest**](RcsLaunchRequest.md) |  |  |

### Return type

[**CreateRcsAgent201Response**](CreateRcsAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_rcs_message

> <SendRcsMessage200Response> send_rcs_message(send_rcs_message_request, opts)

Send an RCS message

Sends from one of your agents. Use `text` for a plain message or `content` for rich content (card, carousel, media, suggestion chips). Before launch an agent only reaches test phones that accepted the invite. With the agent's `smsFallbackFrom` set, phones without RCS get `fallbackText` (default: the message's readable text) as SMS.  Replies and status arrive as webhooks with `platform: \"rcs\"`: `message.received` (a tapped chip carries its postback in `metadata.postbackPayload`), `message.delivered`, `message.read` and `message.failed`. Send an `Idempotency-Key` header to make retries safe. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
send_rcs_message_request = Zernio::SendRcsMessageRequest.new({agent_id: 'agent_id_example', to: 'to_example'}) # SendRcsMessageRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Send an RCS message
  result = api_instance.send_rcs_message(send_rcs_message_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->send_rcs_message: #{e}"
end
```

#### Using the send_rcs_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendRcsMessage200Response>, Integer, Hash)> send_rcs_message_with_http_info(send_rcs_message_request, opts)

```ruby
begin
  # Send an RCS message
  data, status_code, headers = api_instance.send_rcs_message_with_http_info(send_rcs_message_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendRcsMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->send_rcs_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_rcs_message_request** | [**SendRcsMessageRequest**](SendRcsMessageRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**SendRcsMessage200Response**](SendRcsMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rcs_agent

> <CreateRcsAgent201Response> update_rcs_agent(agent_id, update_rcs_agent_request)

Update an RCS agent

Edits the filing while the agent is `requested` or `changes_requested`; answering a change request puts it back in our review. The company can only change until it is filed. `smsFallbackFrom` stays editable in any status (null removes it). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
agent_id = 'agent_id_example' # String | 
update_rcs_agent_request = Zernio::UpdateRcsAgentRequest.new # UpdateRcsAgentRequest | 

begin
  # Update an RCS agent
  result = api_instance.update_rcs_agent(agent_id, update_rcs_agent_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->update_rcs_agent: #{e}"
end
```

#### Using the update_rcs_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRcsAgent201Response>, Integer, Hash)> update_rcs_agent_with_http_info(agent_id, update_rcs_agent_request)

```ruby
begin
  # Update an RCS agent
  data, status_code, headers = api_instance.update_rcs_agent_with_http_info(agent_id, update_rcs_agent_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRcsAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->update_rcs_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **update_rcs_agent_request** | [**UpdateRcsAgentRequest**](UpdateRcsAgentRequest.md) |  |  |

### Return type

[**CreateRcsAgent201Response**](CreateRcsAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_rcs_asset

> <ListInboxReviews200ResponseDataInnerPhotosInner> upload_rcs_asset(file, kind)

Upload an RCS logo or banner

Uploads an image and returns a public URL for `profile.logoUrl` or `profile.heroUrl`. The image is cropped and compressed to the carriers' exact rules (logo 224x224 under 50 KB, banner 1440x448 under 200 KB). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::RCSApi.new
file = File.new('/path/to/some/file') # File | PNG, JPEG or WebP.
kind = 'logo' # String | 

begin
  # Upload an RCS logo or banner
  result = api_instance.upload_rcs_asset(file, kind)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->upload_rcs_asset: #{e}"
end
```

#### Using the upload_rcs_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxReviews200ResponseDataInnerPhotosInner>, Integer, Hash)> upload_rcs_asset_with_http_info(file, kind)

```ruby
begin
  # Upload an RCS logo or banner
  data, status_code, headers = api_instance.upload_rcs_asset_with_http_info(file, kind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxReviews200ResponseDataInnerPhotosInner>
rescue Zernio::ApiError => e
  puts "Error when calling RCSApi->upload_rcs_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | PNG, JPEG or WebP. |  |
| **kind** | **String** |  |  |

### Return type

[**ListInboxReviews200ResponseDataInnerPhotosInner**](ListInboxReviews200ResponseDataInnerPhotosInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

