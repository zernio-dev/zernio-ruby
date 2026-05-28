# Zernio::ListWhatsAppConversions200ResponseEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | When the event was sent to Meta. | [optional] |
| **event_name** | **String** | One of LeadSubmitted, Purchase, AddToCart, InitiateCheckout, ViewContent. | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **events_received** | **Integer** | Number of events Meta accepted on this send (usually 1). | [optional] |
| **events_failed** | **Integer** | Number of events Meta rejected (usually 0). | [optional] |
| **trace_id** | **String** | Meta fbtrace_id for cross-referencing in Events Manager. | [optional] |
| **duration_ms** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppConversions200ResponseEventsInner.new(
  timestamp: null,
  event_name: null,
  conversation_id: null,
  events_received: null,
  events_failed: null,
  trace_id: null,
  duration_ms: null
)
```

