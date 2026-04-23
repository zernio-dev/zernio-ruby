# Zernio::WebhookPayloadReviewUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **review** | [**ReviewWebhookReview**](ReviewWebhookReview.md) |  |  |
| **account** | [**WebhookPayloadReviewNewAccount**](WebhookPayloadReviewNewAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReviewUpdated.new(
  id: null,
  event: null,
  review: null,
  account: null,
  timestamp: null
)
```

