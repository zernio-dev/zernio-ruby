# Late::LogsApi

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
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::LogsApi.new
opts = {
  type: 'publishing', # String | Log category to query
  status: 'success', # String | Filter by status
  platform: 'tiktok', # String | Filter by platform
  action: 'action_example', # String | Filter by action (e.g., post.published, message.sent, account.connected, webhook.delivered)
  search: 'search_example', # String | Free-text search across log fields
  days: 56, # Integer | Number of days to look back (max 90)
  limit: 56, # Integer | Maximum number of logs to return (max 100)
  skip: 56 # Integer | Number of logs to skip (for pagination)
}

begin
  # List activity logs
  result = api_instance.list_logs(opts)
  p result
rescue Late::ApiError => e
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
rescue Late::ApiError => e
  puts "Error when calling LogsApi->list_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Log category to query | [optional][default to &#39;publishing&#39;] |
| **status** | **String** | Filter by status | [optional] |
| **platform** | **String** | Filter by platform | [optional] |
| **action** | **String** | Filter by action (e.g., post.published, message.sent, account.connected, webhook.delivered) | [optional] |
| **search** | **String** | Free-text search across log fields | [optional] |
| **days** | **Integer** | Number of days to look back (max 90) | [optional][default to 90] |
| **limit** | **Integer** | Maximum number of logs to return (max 100) | [optional][default to 50] |
| **skip** | **Integer** | Number of logs to skip (for pagination) | [optional][default to 0] |

### Return type

[**ListLogs200Response**](ListLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

