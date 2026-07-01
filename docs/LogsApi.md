# Zernio::LogsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_logs**](LogsApi.md#list_logs) | **GET** /v1/logs | List activity logs |


## list_logs

> <ListLogs200Response> list_logs(opts)

List activity logs

Unified logs endpoint. Returns logs for publishing, connections, webhooks, and messaging. Filter by type, platform, status, and time range. Logs are retained for 90 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LogsApi.new
opts = {
  type: 'all', # String | Log category to query. Use `all` for the unified view across every category, or `api_request` for your API request logs (method, path, status, latency). 
  status: 'success', # String | Filter by status
  platform: 'tiktok', # String | Filter by platform
  action: 'action_example', # String | Filter by action (e.g., post.published, message.sent, account.connected, webhook.delivered)
  search: 'search_example', # String | Free-text search across log fields
  days: 56, # Integer | Number of days to look back (max 90)
  limit: 56, # Integer | Maximum number of logs to return (max 100)
  skip: 56, # Integer | Number of logs to skip (for pagination)
  account_id: 'account_id_example', # String | Filter by connected account ID
  event: 'event_example', # String | Filter webhook logs by event (e.g. post.published, message.received)
  request_id: 'request_id_example', # String | Correlation ID — returns every log spawned by a single API request
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Precise start instant (ISO 8601); narrows within the day range
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Precise end instant (ISO 8601)
  status_code: 56, # Integer | Filter by exact HTTP status code (api_request logs)
  api_key_id: 'api_key_id_example', # String | Filter by the API key that made the request (api_request logs)
  include_read_receipts: true # Boolean | Include message.read / message.delivered events (hidden by default for messaging logs)
}

begin
  # List activity logs
  result = api_instance.list_logs(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LogsApi->list_logs: #{e}"
end
```

#### Using the list_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLogs200Response>, Integer, Hash)> list_logs_with_http_info(opts)

```ruby
begin
  # List activity logs
  data, status_code, headers = api_instance.list_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LogsApi->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Log category to query. Use &#x60;all&#x60; for the unified view across every category, or &#x60;api_request&#x60; for your API request logs (method, path, status, latency).  | [optional][default to &#39;publishing&#39;] |
| **status** | **String** | Filter by status | [optional] |
| **platform** | **String** | Filter by platform | [optional] |
| **action** | **String** | Filter by action (e.g., post.published, message.sent, account.connected, webhook.delivered) | [optional] |
| **search** | **String** | Free-text search across log fields | [optional] |
| **days** | **Integer** | Number of days to look back (max 90) | [optional][default to 90] |
| **limit** | **Integer** | Maximum number of logs to return (max 100) | [optional][default to 50] |
| **skip** | **Integer** | Number of logs to skip (for pagination) | [optional][default to 0] |
| **account_id** | **String** | Filter by connected account ID | [optional] |
| **event** | **String** | Filter webhook logs by event (e.g. post.published, message.received) | [optional] |
| **request_id** | **String** | Correlation ID — returns every log spawned by a single API request | [optional] |
| **from** | **Time** | Precise start instant (ISO 8601); narrows within the day range | [optional] |
| **to** | **Time** | Precise end instant (ISO 8601) | [optional] |
| **status_code** | **Integer** | Filter by exact HTTP status code (api_request logs) | [optional] |
| **api_key_id** | **String** | Filter by the API key that made the request (api_request logs) | [optional] |
| **include_read_receipts** | **Boolean** | Include message.read / message.delivered events (hidden by default for messaging logs) | [optional][default to false] |

### Return type

[**ListLogs200Response**](ListLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

