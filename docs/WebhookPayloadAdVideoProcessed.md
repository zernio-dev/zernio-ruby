# Zernio::WebhookPayloadAdVideoProcessed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAdVideoProcessedAccount**](WebhookPayloadAdVideoProcessedAccount.md) |  |  |
| **video** | [**WebhookPayloadAdVideoProcessedVideo**](WebhookPayloadAdVideoProcessedVideo.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdVideoProcessed.new(
  id: null,
  event: null,
  account: null,
  video: null,
  timestamp: null
)
```

