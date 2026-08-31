# Zernio::RedeliverWebhookEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | ID of the webhook subscription that delivered the event |  |
| **event_id** | **String** | Stable event ID of the delivery to replay |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RedeliverWebhookEventRequest.new(
  webhook_id: null,
  event_id: null
)
```

