# Zernio::OnWhatsAppAutomaticEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **account_id** | **String** | SocialAccount id of the WhatsApp number whose conversation was flagged. | [optional] |
| **conversation_id** | **String** | Zernio conversation id, when the thread could be resolved. | [optional] |
| **platform_message_id** | **String** | The wamid of the message Meta&#39;s analysis flagged. | [optional] |
| **event_name** | **String** | Meta-detected event: &#x60;LeadSubmitted&#x60; | &#x60;Purchase&#x60;. | [optional] |
| **ctwa_clid** | **String** | Meta&#39;s CTWA click id, the Conversions API match key. | [optional] |
| **custom_data** | [**OnWhatsAppAutomaticEventRequestCustomData**](OnWhatsAppAutomaticEventRequestCustomData.md) |  | [optional] |
| **detected_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppAutomaticEventRequest.new(
  test: null,
  id: null,
  event: null,
  timestamp: null,
  account_id: null,
  conversation_id: null,
  platform_message_id: null,
  event_name: null,
  ctwa_clid: null,
  custom_data: null,
  detected_at: null
)
```

