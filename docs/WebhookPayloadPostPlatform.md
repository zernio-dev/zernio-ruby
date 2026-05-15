# Zernio::WebhookPayloadPostPlatform

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID. |  |
| **event** | **String** |  |  |
| **post** | [**WebhookPayloadPostPlatformPost**](WebhookPayloadPostPlatformPost.md) |  |  |
| **platform** | [**WebhookPayloadPostPlatformPlatform**](WebhookPayloadPostPlatformPlatform.md) |  |  |
| **account** | [**WebhookPayloadPostPlatformAccount**](WebhookPayloadPostPlatformAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPlatform.new(
  id: null,
  event: null,
  post: null,
  platform: null,
  account: null,
  timestamp: null
)
```

