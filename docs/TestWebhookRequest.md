# Zernio::TestWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | ID of the webhook to test |  |
| **event** | **String** | Send a sample payload of this event instead of &#x60;webhook.test&#x60;. The sample is marked with &#x60;test: true&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TestWebhookRequest.new(
  webhook_id: null,
  event: null
)
```

