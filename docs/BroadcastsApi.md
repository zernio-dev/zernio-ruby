# Zernio::BroadcastsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_broadcast_recipients**](BroadcastsApi.md#add_broadcast_recipients) | **POST** /v1/broadcasts/{broadcastId}/recipients | Add recipients to a broadcast |
| [**cancel_broadcast**](BroadcastsApi.md#cancel_broadcast) | **POST** /v1/broadcasts/{broadcastId}/cancel | Cancel broadcast |
| [**create_broadcast**](BroadcastsApi.md#create_broadcast) | **POST** /v1/broadcasts | Create broadcast draft |
| [**delete_broadcast**](BroadcastsApi.md#delete_broadcast) | **DELETE** /v1/broadcasts/{broadcastId} | Delete broadcast |
| [**get_broadcast**](BroadcastsApi.md#get_broadcast) | **GET** /v1/broadcasts/{broadcastId} | Get broadcast details |
| [**list_broadcast_recipients**](BroadcastsApi.md#list_broadcast_recipients) | **GET** /v1/broadcasts/{broadcastId}/recipients | List broadcast recipients |
| [**list_broadcasts**](BroadcastsApi.md#list_broadcasts) | **GET** /v1/broadcasts | List broadcasts |
| [**schedule_broadcast**](BroadcastsApi.md#schedule_broadcast) | **POST** /v1/broadcasts/{broadcastId}/schedule | Schedule broadcast for later |
| [**send_broadcast**](BroadcastsApi.md#send_broadcast) | **POST** /v1/broadcasts/{broadcastId}/send | Send broadcast now |
| [**update_broadcast**](BroadcastsApi.md#update_broadcast) | **PATCH** /v1/broadcasts/{broadcastId} | Update broadcast |


## add_broadcast_recipients

> <AddBroadcastRecipients200Response> add_broadcast_recipients(broadcast_id, add_broadcast_recipients_request)

Add recipients to a broadcast

Add recipients by contact IDs, raw phone numbers, or from the broadcast's segment filters.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 
add_broadcast_recipients_request = Zernio::AddBroadcastRecipientsRequest.new # AddBroadcastRecipientsRequest | 

begin
  # Add recipients to a broadcast
  result = api_instance.add_broadcast_recipients(broadcast_id, add_broadcast_recipients_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->add_broadcast_recipients: #{e}"
end
```

#### Using the add_broadcast_recipients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddBroadcastRecipients200Response>, Integer, Hash)> add_broadcast_recipients_with_http_info(broadcast_id, add_broadcast_recipients_request)

```ruby
begin
  # Add recipients to a broadcast
  data, status_code, headers = api_instance.add_broadcast_recipients_with_http_info(broadcast_id, add_broadcast_recipients_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddBroadcastRecipients200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->add_broadcast_recipients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |
| **add_broadcast_recipients_request** | [**AddBroadcastRecipientsRequest**](AddBroadcastRecipientsRequest.md) |  |  |

### Return type

[**AddBroadcastRecipients200Response**](AddBroadcastRecipients200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_broadcast

> <CancelBroadcast200Response> cancel_broadcast(broadcast_id)

Cancel broadcast

Cancel a scheduled or in-progress broadcast. Already-sent messages are not affected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 

begin
  # Cancel broadcast
  result = api_instance.cancel_broadcast(broadcast_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->cancel_broadcast: #{e}"
end
```

#### Using the cancel_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelBroadcast200Response>, Integer, Hash)> cancel_broadcast_with_http_info(broadcast_id)

```ruby
begin
  # Cancel broadcast
  data, status_code, headers = api_instance.cancel_broadcast_with_http_info(broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->cancel_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |

### Return type

[**CancelBroadcast200Response**](CancelBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_broadcast

> <CreateBroadcast200Response> create_broadcast(create_broadcast_request)

Create broadcast draft

Create a broadcast in draft status. Add recipients and then send or schedule it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
create_broadcast_request = Zernio::CreateBroadcastRequest.new({profile_id: 'profile_id_example', account_id: 'account_id_example', platform: 'instagram', name: 'name_example'}) # CreateBroadcastRequest | 

begin
  # Create broadcast draft
  result = api_instance.create_broadcast(create_broadcast_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->create_broadcast: #{e}"
end
```

#### Using the create_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBroadcast200Response>, Integer, Hash)> create_broadcast_with_http_info(create_broadcast_request)

```ruby
begin
  # Create broadcast draft
  data, status_code, headers = api_instance.create_broadcast_with_http_info(create_broadcast_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->create_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_broadcast_request** | [**CreateBroadcastRequest**](CreateBroadcastRequest.md) |  |  |

### Return type

[**CreateBroadcast200Response**](CreateBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_broadcast

> delete_broadcast(broadcast_id)

Delete broadcast

Permanently delete a broadcast. Only drafts can be deleted.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 

begin
  # Delete broadcast
  api_instance.delete_broadcast(broadcast_id)
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->delete_broadcast: #{e}"
end
```

#### Using the delete_broadcast_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_broadcast_with_http_info(broadcast_id)

```ruby
begin
  # Delete broadcast
  data, status_code, headers = api_instance.delete_broadcast_with_http_info(broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->delete_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_broadcast

> <GetBroadcast200Response> get_broadcast(broadcast_id)

Get broadcast details

Returns a broadcast with its full configuration and delivery stats.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 

begin
  # Get broadcast details
  result = api_instance.get_broadcast(broadcast_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->get_broadcast: #{e}"
end
```

#### Using the get_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBroadcast200Response>, Integer, Hash)> get_broadcast_with_http_info(broadcast_id)

```ruby
begin
  # Get broadcast details
  data, status_code, headers = api_instance.get_broadcast_with_http_info(broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->get_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |

### Return type

[**GetBroadcast200Response**](GetBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_broadcast_recipients

> <ListBroadcastRecipients200Response> list_broadcast_recipients(broadcast_id, opts)

List broadcast recipients

Returns recipients for a broadcast with individual delivery status. Filter by status.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 
opts = {
  status: 'pending', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List broadcast recipients
  result = api_instance.list_broadcast_recipients(broadcast_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->list_broadcast_recipients: #{e}"
end
```

#### Using the list_broadcast_recipients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBroadcastRecipients200Response>, Integer, Hash)> list_broadcast_recipients_with_http_info(broadcast_id, opts)

```ruby
begin
  # List broadcast recipients
  data, status_code, headers = api_instance.list_broadcast_recipients_with_http_info(broadcast_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBroadcastRecipients200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->list_broadcast_recipients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |
| **status** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListBroadcastRecipients200Response**](ListBroadcastRecipients200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_broadcasts

> <ListBroadcasts200Response> list_broadcasts(opts)

List broadcasts

Returns broadcasts with delivery stats. Filter by status, platform, or profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter by profile. Omit to list across all profiles
  status: 'draft', # String | 
  platform: 'platform_example', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List broadcasts
  result = api_instance.list_broadcasts(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->list_broadcasts: #{e}"
end
```

#### Using the list_broadcasts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBroadcasts200Response>, Integer, Hash)> list_broadcasts_with_http_info(opts)

```ruby
begin
  # List broadcasts
  data, status_code, headers = api_instance.list_broadcasts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBroadcasts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->list_broadcasts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile. Omit to list across all profiles | [optional] |
| **status** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListBroadcasts200Response**](ListBroadcasts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## schedule_broadcast

> <ScheduleBroadcast200Response> schedule_broadcast(broadcast_id, schedule_broadcast_request)

Schedule broadcast for later

Schedule a draft broadcast to be sent at a future date and time.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 
schedule_broadcast_request = Zernio::ScheduleBroadcastRequest.new({scheduled_at: Time.now}) # ScheduleBroadcastRequest | 

begin
  # Schedule broadcast for later
  result = api_instance.schedule_broadcast(broadcast_id, schedule_broadcast_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->schedule_broadcast: #{e}"
end
```

#### Using the schedule_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduleBroadcast200Response>, Integer, Hash)> schedule_broadcast_with_http_info(broadcast_id, schedule_broadcast_request)

```ruby
begin
  # Schedule broadcast for later
  data, status_code, headers = api_instance.schedule_broadcast_with_http_info(broadcast_id, schedule_broadcast_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduleBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->schedule_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |
| **schedule_broadcast_request** | [**ScheduleBroadcastRequest**](ScheduleBroadcastRequest.md) |  |  |

### Return type

[**ScheduleBroadcast200Response**](ScheduleBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_broadcast

> <SendBroadcast200Response> send_broadcast(broadcast_id)

Send broadcast now

Immediately start sending a draft broadcast to its recipients.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 

begin
  # Send broadcast now
  result = api_instance.send_broadcast(broadcast_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->send_broadcast: #{e}"
end
```

#### Using the send_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendBroadcast200Response>, Integer, Hash)> send_broadcast_with_http_info(broadcast_id)

```ruby
begin
  # Send broadcast now
  data, status_code, headers = api_instance.send_broadcast_with_http_info(broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->send_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |

### Return type

[**SendBroadcast200Response**](SendBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_broadcast

> <UpdateBroadcast200Response> update_broadcast(broadcast_id)

Update broadcast

Update a broadcast's name, message, template, or segment filters. Only draft broadcasts can be updated.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BroadcastsApi.new
broadcast_id = 'broadcast_id_example' # String | 

begin
  # Update broadcast
  result = api_instance.update_broadcast(broadcast_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->update_broadcast: #{e}"
end
```

#### Using the update_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateBroadcast200Response>, Integer, Hash)> update_broadcast_with_http_info(broadcast_id)

```ruby
begin
  # Update broadcast
  data, status_code, headers = api_instance.update_broadcast_with_http_info(broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateBroadcast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BroadcastsApi->update_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broadcast_id** | **String** |  |  |

### Return type

[**UpdateBroadcast200Response**](UpdateBroadcast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

