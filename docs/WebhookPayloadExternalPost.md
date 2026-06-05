# Zernio::WebhookPayloadExternalPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **post** | [**ExternalPostWebhookPost**](ExternalPostWebhookPost.md) |  |  |
| **account** | [**WebhookPayloadReviewNewAccount**](WebhookPayloadReviewNewAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadExternalPost.new(
  id: null,
  event: null,
  post: null,
  account: null,
  timestamp: null
)
```

