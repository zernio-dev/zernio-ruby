# Late::ListLogs200ResponseLogsInner

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

## Example

```ruby
require 'late-sdk'

instance = Late::ListLogs200ResponseLogsInner.new(
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
  metadata: null
)
```

