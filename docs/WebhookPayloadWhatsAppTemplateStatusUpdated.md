# Zernio::WebhookPayloadWhatsAppTemplateStatusUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadWhatsAppTemplateStatusUpdatedAccount**](WebhookPayloadWhatsAppTemplateStatusUpdatedAccount.md) |  |  |
| **template** | [**WebhookPayloadWhatsAppTemplateStatusUpdatedTemplate**](WebhookPayloadWhatsAppTemplateStatusUpdatedTemplate.md) |  |  |
| **timestamp** | **Time** | ISO-8601 timestamp the webhook was produced. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppTemplateStatusUpdated.new(
  id: null,
  event: null,
  account: null,
  template: null,
  timestamp: null
)
```

