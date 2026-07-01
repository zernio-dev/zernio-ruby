# Zernio::ListLogs200ResponseLogsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Log category (publishing, connections, webhooks, messaging) | [optional] |
| **action** | **String** | Specific action (post.published, message.sent, account.connected, etc.) | [optional] |
| **user_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **status_code** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **duration_ms** | **Integer** |  | [optional] |
| **endpoint** | **String** | The API endpoint that triggered this log | [optional] |
| **request_body** | **String** | Request JSON (truncated to 5KB) | [optional] |
| **response_body** | **String** | Response JSON (truncated to 10KB) | [optional] |
| **created_at** | **Time** |  | [optional] |
| **metadata** | **String** | Additional context as JSON string | [optional] |
| **request_id** | **String** | Correlation ID linking every log from one API request (api_request logs) | [optional] |
| **api_key_id** | **String** | The API key that made the request (api_request logs) | [optional] |
| **method** | **String** | HTTP method (api_request logs) | [optional] |
| **path** | **String** | Request path (api_request logs) | [optional] |
| **ip_address** | **String** | Client IP address (api_request logs) | [optional] |
| **user_agent** | **String** | Client user-agent (api_request logs) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLogs200ResponseLogsInner.new(
  type: null,
  action: null,
  user_id: null,
  platform: null,
  account_id: null,
  status: null,
  status_code: null,
  error_message: null,
  error_code: null,
  duration_ms: null,
  endpoint: null,
  request_body: null,
  response_body: null,
  created_at: null,
  metadata: null,
  request_id: null,
  api_key_id: null,
  method: null,
  path: null,
  ip_address: null,
  user_agent: null
)
```

