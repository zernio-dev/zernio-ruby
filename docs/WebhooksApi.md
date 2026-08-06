# Zernio::WebhooksApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_settings**](WebhooksApi.md#create_webhook_settings) | **POST** /v1/webhooks/settings | Create webhook |
| [**delete_webhook_settings**](WebhooksApi.md#delete_webhook_settings) | **DELETE** /v1/webhooks/settings | Delete webhook |
| [**get_webhook_logs**](WebhooksApi.md#get_webhook_logs) | **GET** /v1/webhooks/logs | List webhook delivery logs |
| [**get_webhook_settings**](WebhooksApi.md#get_webhook_settings) | **GET** /v1/webhooks/settings | List webhooks |
| [**test_webhook**](WebhooksApi.md#test_webhook) | **POST** /v1/webhooks/test | Send test webhook |
| [**update_webhook_settings**](WebhooksApi.md#update_webhook_settings) | **PUT** /v1/webhooks/settings | Update webhook |


## create_webhook_settings

> <UpdateWebhookSettings200Response> create_webhook_settings(create_webhook_settings_request)

Create webhook

Create a new webhook configuration. Maximum 50 webhooks per user.  `name`, `url` and `events` are required. `url` must be a valid URL and `events` must contain at least one event. Whitespace is trimmed from `url` before validation.  Webhooks are automatically disabled after 10 consecutive delivery failures.  A restricted (zrk_) API key can only subscribe to events whose resource group the key holds; an event outside the key's groups is rejected with 403, so a restricted key can never create a subscription broader than itself.  `disabledResourceGroups` restricts the subscription itself, independently of which key or session later reads it. Events in a disabled group are dropped before delivery to this endpoint, on live delivery and on every replay path (test fire, redelivery, dead-letter requeue), even if they are listed in `events`. Omit it to receive everything in `events`, which is how existing subscriptions behave. A restricted key's own disabled groups are always unioned in. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new
create_webhook_settings_request = Zernio::CreateWebhookSettingsRequest.new({name: 'name_example', url: 'url_example', events: ['post.scheduled']}) # CreateWebhookSettingsRequest | 

begin
  # Create webhook
  result = api_instance.create_webhook_settings(create_webhook_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_settings: #{e}"
end
```

#### Using the create_webhook_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWebhookSettings200Response>, Integer, Hash)> create_webhook_settings_with_http_info(create_webhook_settings_request)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.create_webhook_settings_with_http_info(create_webhook_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWebhookSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_settings_request** | [**CreateWebhookSettingsRequest**](CreateWebhookSettingsRequest.md) |  |  |

### Return type

[**UpdateWebhookSettings200Response**](UpdateWebhookSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_settings

> <UpdateYoutubeDefaultPlaylist200Response> delete_webhook_settings(id)

Delete webhook

Permanently delete a webhook configuration.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new
id = 'id_example' # String | Webhook ID to delete

begin
  # Delete webhook
  result = api_instance.delete_webhook_settings(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_settings: #{e}"
end
```

#### Using the delete_webhook_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_webhook_settings_with_http_info(id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Webhook ID to delete |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_logs

> <GetWebhookLogs200Response> get_webhook_logs(opts)

List webhook delivery logs

Retrieve recorded webhook delivery attempts for the authenticated user, most recent first. Logs are retained for 30 days. Supports filtering by status, event type, webhook ID, and event ID, plus offset-based pagination.  For a restricted (zrk_) API key, rows for events outside the key's resource groups are omitted (`pagination.total` may over-count), and an `event` filter naming such an event is rejected with 403. Events blocked by a subscription's own `disabledResourceGroups` are dropped before delivery, so they produce no log rows for anyone; the exception is the five-minute tail after a denylist change, where an already-queued event can still be delivered and logged. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new
opts = {
  limit: 56, # Integer | Maximum number of logs to return
  skip: 56, # Integer | Number of logs to skip (offset-based pagination)
  status: 'success', # String | Filter by delivery outcome
  event: 'event_example', # String | Filter by event type (e.g. post.published)
  webhook_id: 'webhook_id_example', # String | Filter by webhook configuration ID
  event_id: 'event_id_example' # String | Filter by stable webhook event ID
}

begin
  # List webhook delivery logs
  result = api_instance.get_webhook_logs(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_logs: #{e}"
end
```

#### Using the get_webhook_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhookLogs200Response>, Integer, Hash)> get_webhook_logs_with_http_info(opts)

```ruby
begin
  # List webhook delivery logs
  data, status_code, headers = api_instance.get_webhook_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhookLogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of logs to return | [optional][default to 50] |
| **skip** | **Integer** | Number of logs to skip (offset-based pagination) | [optional][default to 0] |
| **status** | **String** | Filter by delivery outcome | [optional] |
| **event** | **String** | Filter by event type (e.g. post.published) | [optional] |
| **webhook_id** | **String** | Filter by webhook configuration ID | [optional] |
| **event_id** | **String** | Filter by stable webhook event ID | [optional] |

### Return type

[**GetWebhookLogs200Response**](GetWebhookLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_settings

> <GetWebhookSettings200Response> get_webhook_settings

List webhooks

Retrieve all configured webhooks for the authenticated user. Supports up to 50 webhooks per user.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new

begin
  # List webhooks
  result = api_instance.get_webhook_settings
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_settings: #{e}"
end
```

#### Using the get_webhook_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhookSettings200Response>, Integer, Hash)> get_webhook_settings_with_http_info

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.get_webhook_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhookSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWebhookSettings200Response**](GetWebhookSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_webhook

> <UnpublishPost200Response> test_webhook(test_webhook_request)

Send test webhook

Send a test webhook to verify your endpoint is configured correctly. The test payload includes event: \"webhook.test\" to distinguish it from real events.  `webhook.test` belongs to the `webhooks` resource group, so a key with that group disabled is rejected with 403, as is a test fire on a subscription that lists `webhooks` in its own `disabledResourceGroups` (a 403, not a reported delivery failure). Replays of real events (redelivery, dead-letter requeue) run the same checks as live delivery, against both the key's groups and the subscription's. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new
test_webhook_request = Zernio::TestWebhookRequest.new({webhook_id: 'webhook_id_example'}) # TestWebhookRequest | 

begin
  # Send test webhook
  result = api_instance.test_webhook(test_webhook_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook: #{e}"
end
```

#### Using the test_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> test_webhook_with_http_info(test_webhook_request)

```ruby
begin
  # Send test webhook
  data, status_code, headers = api_instance.test_webhook_with_http_info(test_webhook_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_webhook_request** | [**TestWebhookRequest**](TestWebhookRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_webhook_settings

> <UpdateWebhookSettings200Response> update_webhook_settings(update_webhook_settings_request)

Update webhook

Update an existing webhook configuration. All fields except `_id` are optional; only provided fields will be updated.  When provided, `name` must be 1-50 characters, `url` must be a valid URL, and `events` must contain at least one event. Whitespace is trimmed from `url` before validation.  Webhooks are automatically disabled after 10 consecutive delivery failures.  A restricted (zrk_) API key can only set `events` to events whose resource group the key holds; an event outside the key's groups is rejected with 403. It also cannot widen an existing subscription past its own groups.  `disabledResourceGroups` replaces the subscription's own denylist, which applies to delivery regardless of which key or session created it. Send an empty array to clear it. A restricted key's own disabled groups are unioned into the stored value on every update, so repointing a legacy unrestricted subscription with a restricted key also narrows it.  Timing: the new denylist applies to every event emitted after the update. Events already queued for delivery when the update landed were filtered against the previous denylist and can still arrive at your endpoint for up to five minutes after they were enqueued, because the delivery worker trusts a five-minute enqueue-time snapshot before re-checking the subscription. Retries beyond that window, dead-letter replays, test fires, and redeliveries are all checked against the current denylist. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WebhooksApi.new
update_webhook_settings_request = Zernio::UpdateWebhookSettingsRequest.new({_id: '_id_example'}) # UpdateWebhookSettingsRequest | 

begin
  # Update webhook
  result = api_instance.update_webhook_settings(update_webhook_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_settings: #{e}"
end
```

#### Using the update_webhook_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWebhookSettings200Response>, Integer, Hash)> update_webhook_settings_with_http_info(update_webhook_settings_request)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_settings_with_http_info(update_webhook_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWebhookSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_webhook_settings_request** | [**UpdateWebhookSettingsRequest**](UpdateWebhookSettingsRequest.md) |  |  |

### Return type

[**UpdateWebhookSettings200Response**](UpdateWebhookSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

