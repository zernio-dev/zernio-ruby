# Zernio::WebhookPayloadWhatsAppContactIdentityChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadWhatsAppContactIdentityChangedAccount**](WebhookPayloadWhatsAppContactIdentityChangedAccount.md) |  |  |
| **reason** | **String** | Which Meta signal reported the change. &#x60;user_changed_number&#x60;: new phone number. &#x60;user_changed_user_id&#x60; and &#x60;user_id_update&#x60;: new BSUID. |  |
| **previous** | [**WhatsAppContactIdentity**](WhatsAppContactIdentity.md) |  |  |
| **current** | [**WhatsAppContactIdentity**](WhatsAppContactIdentity.md) |  |  |
| **contact_id** | **String** | Zernio contact id matched on the new identity, null when none exists yet. |  |
| **conversation_id** | **String** | Zernio inbox conversation that was re-keyed, null when there was none. |  |
| **changed_at** | **Time** | When Meta reported the change. |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppContactIdentityChanged.new(
  id: null,
  event: null,
  account: null,
  reason: null,
  previous: null,
  current: null,
  contact_id: null,
  conversation_id: null,
  changed_at: null,
  timestamp: null
)
```

