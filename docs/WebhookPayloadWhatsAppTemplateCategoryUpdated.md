# Zernio::WebhookPayloadWhatsAppTemplateCategoryUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadWhatsAppTemplateStatusUpdatedAccount**](WebhookPayloadWhatsAppTemplateStatusUpdatedAccount.md) |  |  |
| **template** | [**WebhookPayloadWhatsAppTemplateCategoryUpdatedTemplate**](WebhookPayloadWhatsAppTemplateCategoryUpdatedTemplate.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppTemplateCategoryUpdated.new(
  id: null,
  event: null,
  account: null,
  template: null,
  timestamp: null
)
```

