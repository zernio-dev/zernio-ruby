# Zernio::WebhookLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the account owner the webhook belongs to | [optional] |
| **webhook_id** | **String** | ID of the webhook configuration that produced this delivery | [optional] |
| **webhook_name** | **String** | Name of the webhook configuration at delivery time | [optional] |
| **event_id** | **String** | Stable webhook event ID (correlates to the delivered payload) | [optional] |
| **event** | **String** | Event type that triggered the delivery (e.g. post.published) | [optional] |
| **url** | **String** | Destination URL the webhook was delivered to | [optional] |
| **status** | **String** | Delivery outcome | [optional] |
| **status_code** | **Integer** | HTTP status code returned by the destination endpoint | [optional] |
| **request_payload** | **Hash&lt;String, Object&gt;** | The JSON payload sent to the destination endpoint | [optional] |
| **response_body** | **String** | Response body returned by the destination endpoint | [optional] |
| **error_message** | **String** | Error message when delivery failed | [optional] |
| **attempt_number** | **Integer** | Delivery attempt number (increments on retries) | [optional] |
| **response_time** | **Integer** | Time taken by the destination endpoint to respond, in milliseconds | [optional] |
| **created_at** | **Time** | Timestamp the delivery was attempted | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookLog.new(
  user_id: null,
  webhook_id: null,
  webhook_name: null,
  event_id: null,
  event: null,
  url: null,
  status: null,
  status_code: null,
  request_payload: null,
  response_body: null,
  error_message: null,
  attempt_number: null,
  response_time: null,
  created_at: null
)
```

