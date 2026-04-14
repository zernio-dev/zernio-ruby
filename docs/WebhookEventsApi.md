# Late::WebhookEventsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**on_account_connected**](WebhookEventsApi.md#on_account_connected) | **POST** /account.connected | Account connected event |
| [**on_account_disconnected**](WebhookEventsApi.md#on_account_disconnected) | **POST** /account.disconnected | Account disconnected event |
| [**on_comment_received**](WebhookEventsApi.md#on_comment_received) | **POST** /comment.received | Comment received event |
| [**on_message_deleted**](WebhookEventsApi.md#on_message_deleted) | **POST** /message.deleted | Message deleted event |
| [**on_message_delivered**](WebhookEventsApi.md#on_message_delivered) | **POST** /message.delivered | Message delivered event |
| [**on_message_edited**](WebhookEventsApi.md#on_message_edited) | **POST** /message.edited | Message edited event |
| [**on_message_failed**](WebhookEventsApi.md#on_message_failed) | **POST** /message.failed | Message delivery failed event |
| [**on_message_read**](WebhookEventsApi.md#on_message_read) | **POST** /message.read | Message read event |
| [**on_message_received**](WebhookEventsApi.md#on_message_received) | **POST** /message.received | Message received event |
| [**on_message_sent**](WebhookEventsApi.md#on_message_sent) | **POST** /message.sent | Message sent event |
| [**on_post_cancelled**](WebhookEventsApi.md#on_post_cancelled) | **POST** /post.cancelled | Post cancelled event |
| [**on_post_failed**](WebhookEventsApi.md#on_post_failed) | **POST** /post.failed | Post failed event |
| [**on_post_partial**](WebhookEventsApi.md#on_post_partial) | **POST** /post.partial | Post partial event |
| [**on_post_published**](WebhookEventsApi.md#on_post_published) | **POST** /post.published | Post published event |
| [**on_post_recycled**](WebhookEventsApi.md#on_post_recycled) | **POST** /post.recycled | Post recycled event |
| [**on_post_scheduled**](WebhookEventsApi.md#on_post_scheduled) | **POST** /post.scheduled | Post scheduled event |
| [**on_webhook_test**](WebhookEventsApi.md#on_webhook_test) | **POST** /webhook.test | Webhook test event |


## on_account_connected

> on_account_connected(webhook_payload_account_connected)

Account connected event

Fired when a social account is successfully connected.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_account_connected =  # WebhookPayloadAccountConnected | 

begin
  # Account connected event
  api_instance.on_account_connected(webhook_payload_account_connected)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_connected: #{e}"
end
```

#### Using the on_account_connected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_connected_with_http_info(webhook_payload_account_connected)

```ruby
begin
  # Account connected event
  data, status_code, headers = api_instance.on_account_connected_with_http_info(webhook_payload_account_connected)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_connected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_connected** | [**WebhookPayloadAccountConnected**](WebhookPayloadAccountConnected.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_account_disconnected

> on_account_disconnected(webhook_payload_account_disconnected)

Account disconnected event

Fired when a connected social account becomes disconnected.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_account_disconnected =  # WebhookPayloadAccountDisconnected | 

begin
  # Account disconnected event
  api_instance.on_account_disconnected(webhook_payload_account_disconnected)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_disconnected: #{e}"
end
```

#### Using the on_account_disconnected_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_account_disconnected_with_http_info(webhook_payload_account_disconnected)

```ruby
begin
  # Account disconnected event
  data, status_code, headers = api_instance.on_account_disconnected_with_http_info(webhook_payload_account_disconnected)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_account_disconnected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_account_disconnected** | [**WebhookPayloadAccountDisconnected**](WebhookPayloadAccountDisconnected.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_comment_received

> on_comment_received(webhook_payload_comment)

Comment received event

Fired when a new comment is received on a tracked post.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_comment =  # WebhookPayloadComment | 

begin
  # Comment received event
  api_instance.on_comment_received(webhook_payload_comment)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_comment_received: #{e}"
end
```

#### Using the on_comment_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_comment_received_with_http_info(webhook_payload_comment)

```ruby
begin
  # Comment received event
  data, status_code, headers = api_instance.on_comment_received_with_http_info(webhook_payload_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_comment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_comment** | [**WebhookPayloadComment**](WebhookPayloadComment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_deleted

> on_message_deleted(webhook_payload_message_deleted)

Message deleted event

Fired when a sender deletes (unsends) a message. Supported on Instagram (incoming unsend) and WhatsApp (when the business deletes an outgoing message via the Cloud API). The payload retains the pre-delete text and attachments so API consumers can access the original content for moderation or compliance — the Zernio dashboard UI hides it. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_deleted =  # WebhookPayloadMessageDeleted | 

begin
  # Message deleted event
  api_instance.on_message_deleted(webhook_payload_message_deleted)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_deleted: #{e}"
end
```

#### Using the on_message_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_deleted_with_http_info(webhook_payload_message_deleted)

```ruby
begin
  # Message deleted event
  data, status_code, headers = api_instance.on_message_deleted_with_http_info(webhook_payload_message_deleted)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_deleted** | [**WebhookPayloadMessageDeleted**](WebhookPayloadMessageDeleted.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_delivered

> on_message_delivered(webhook_payload_message_delivery_status)

Message delivered event

Fired when an outgoing message is delivered to the recipient. Supported on WhatsApp and Facebook Messenger. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message delivered event
  api_instance.on_message_delivered(webhook_payload_message_delivery_status)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_delivered: #{e}"
end
```

#### Using the on_message_delivered_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_delivered_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message delivered event
  data, status_code, headers = api_instance.on_message_delivered_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_delivered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_edited

> on_message_edited(webhook_payload_message_edited)

Message edited event

Fired when a sender edits a previously-sent message. Supported on Instagram, Facebook Messenger, and Telegram. The payload includes the full editHistory so consumers can show prior versions. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_edited =  # WebhookPayloadMessageEdited | 

begin
  # Message edited event
  api_instance.on_message_edited(webhook_payload_message_edited)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_edited: #{e}"
end
```

#### Using the on_message_edited_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_edited_with_http_info(webhook_payload_message_edited)

```ruby
begin
  # Message edited event
  data, status_code, headers = api_instance.on_message_edited_with_http_info(webhook_payload_message_edited)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_edited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_edited** | [**WebhookPayloadMessageEdited**](WebhookPayloadMessageEdited.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_failed

> on_message_failed(webhook_payload_message_delivery_status)

Message delivery failed event

Fired when an outgoing message fails to deliver. Currently only emitted for WhatsApp (other platforms don't expose per-message failure via webhook). The payload error object contains code, title, and message from the platform. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message delivery failed event
  api_instance.on_message_failed(webhook_payload_message_delivery_status)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_failed: #{e}"
end
```

#### Using the on_message_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_failed_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message delivery failed event
  data, status_code, headers = api_instance.on_message_failed_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_read

> on_message_read(webhook_payload_message_delivery_status)

Message read event

Fired when an outgoing message is read by the recipient. Supported on WhatsApp, Facebook Messenger, and Instagram. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_delivery_status =  # WebhookPayloadMessageDeliveryStatus | 

begin
  # Message read event
  api_instance.on_message_read(webhook_payload_message_delivery_status)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_read: #{e}"
end
```

#### Using the on_message_read_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_read_with_http_info(webhook_payload_message_delivery_status)

```ruby
begin
  # Message read event
  data, status_code, headers = api_instance.on_message_read_with_http_info(webhook_payload_message_delivery_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_delivery_status** | [**WebhookPayloadMessageDeliveryStatus**](WebhookPayloadMessageDeliveryStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_received

> on_message_received(webhook_payload_message)

Message received event

Fired when a new inbox message is received.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message =  # WebhookPayloadMessage | 

begin
  # Message received event
  api_instance.on_message_received(webhook_payload_message)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_received: #{e}"
end
```

#### Using the on_message_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_received_with_http_info(webhook_payload_message)

```ruby
begin
  # Message received event
  data, status_code, headers = api_instance.on_message_received_with_http_info(webhook_payload_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message** | [**WebhookPayloadMessage**](WebhookPayloadMessage.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_message_sent

> on_message_sent(webhook_payload_message_sent)

Message sent event

Fired when a message is sent via the API.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_message_sent =  # WebhookPayloadMessageSent | 

begin
  # Message sent event
  api_instance.on_message_sent(webhook_payload_message_sent)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_sent: #{e}"
end
```

#### Using the on_message_sent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_message_sent_with_http_info(webhook_payload_message_sent)

```ruby
begin
  # Message sent event
  data, status_code, headers = api_instance.on_message_sent_with_http_info(webhook_payload_message_sent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_message_sent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_message_sent** | [**WebhookPayloadMessageSent**](WebhookPayloadMessageSent.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_cancelled

> on_post_cancelled(webhook_payload_post)

Post cancelled event

Fired when a post publishing job is cancelled.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post cancelled event
  api_instance.on_post_cancelled(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_cancelled: #{e}"
end
```

#### Using the on_post_cancelled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_cancelled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post cancelled event
  data, status_code, headers = api_instance.on_post_cancelled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_cancelled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_failed

> on_post_failed(webhook_payload_post)

Post failed event

Fired when a post fails to publish on all target platforms.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post failed event
  api_instance.on_post_failed(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_failed: #{e}"
end
```

#### Using the on_post_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_failed_with_http_info(webhook_payload_post)

```ruby
begin
  # Post failed event
  data, status_code, headers = api_instance.on_post_failed_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_partial

> on_post_partial(webhook_payload_post)

Post partial event

Fired when a post publishes on some platforms and fails on others.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post partial event
  api_instance.on_post_partial(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_partial: #{e}"
end
```

#### Using the on_post_partial_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_partial_with_http_info(webhook_payload_post)

```ruby
begin
  # Post partial event
  data, status_code, headers = api_instance.on_post_partial_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_partial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_published

> on_post_published(webhook_payload_post)

Post published event

Fired when a post is successfully published.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post published event
  api_instance.on_post_published(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_published: #{e}"
end
```

#### Using the on_post_published_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_published_with_http_info(webhook_payload_post)

```ruby
begin
  # Post published event
  data, status_code, headers = api_instance.on_post_published_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_published_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_recycled

> on_post_recycled(webhook_payload_post)

Post recycled event

Fired when a post is recycled (cloned and re-scheduled for publishing).

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post recycled event
  api_instance.on_post_recycled(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_recycled: #{e}"
end
```

#### Using the on_post_recycled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_recycled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post recycled event
  data, status_code, headers = api_instance.on_post_recycled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_recycled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_post_scheduled

> on_post_scheduled(webhook_payload_post)

Post scheduled event

Fired when a post is created and scheduled for publishing.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_post =  # WebhookPayloadPost | 

begin
  # Post scheduled event
  api_instance.on_post_scheduled(webhook_payload_post)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_scheduled: #{e}"
end
```

#### Using the on_post_scheduled_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_post_scheduled_with_http_info(webhook_payload_post)

```ruby
begin
  # Post scheduled event
  data, status_code, headers = api_instance.on_post_scheduled_with_http_info(webhook_payload_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_post_scheduled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_post** | [**WebhookPayloadPost**](WebhookPayloadPost.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## on_webhook_test

> on_webhook_test(webhook_payload_test)

Webhook test event

Fired when sending a test webhook to verify the endpoint configuration.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WebhookEventsApi.new
webhook_payload_test =  # WebhookPayloadTest | 

begin
  # Webhook test event
  api_instance.on_webhook_test(webhook_payload_test)
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_webhook_test: #{e}"
end
```

#### Using the on_webhook_test_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> on_webhook_test_with_http_info(webhook_payload_test)

```ruby
begin
  # Webhook test event
  data, status_code, headers = api_instance.on_webhook_test_with_http_info(webhook_payload_test)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Late::ApiError => e
  puts "Error when calling WebhookEventsApi->on_webhook_test_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_payload_test** | [**WebhookPayloadTest**](WebhookPayloadTest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

