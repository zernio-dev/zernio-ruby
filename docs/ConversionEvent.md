# Late::ConversionEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** | Standard event name (Purchase, Lead, CompleteRegistration, AddToCart, InitiateCheckout, AddPaymentInfo, Subscribe, StartTrial, ViewContent, Search, Contact, SubmitApplication, Schedule) or a custom string (only supported on platforms that accept custom events).  |  |
| **event_time** | **Integer** | When the conversion happened, in unix seconds. |  |
| **event_id** | **String** | Unique dedup key. The same eventId must be used on pixel + CAPI to prevent double-counting. Mapped to event_id on Meta and transactionId on Google.  |  |
| **value** | **Float** | Conversion value in the specified currency. | [optional] |
| **currency** | **String** | ISO 4217 currency code. | [optional] |
| **user** | [**ConversionEventUser**](ConversionEventUser.md) |  |  |
| **items** | [**Array&lt;ConversionEventItemsInner&gt;**](ConversionEventItemsInner.md) | Item-level detail for ecommerce events. | [optional] |
| **source_url** | **String** | URL where the conversion originated (used by Meta). | [optional] |
| **action_source** | **String** | Where the conversion happened. Used by Meta; Google ignores. | [optional] |
| **platform_data** | **Hash&lt;String, Object&gt;** | Escape hatch for platform-specific fields we haven&#39;t normalized. Forwarded as-is. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ConversionEvent.new(
  event_name: Purchase,
  event_time: 1744732800,
  event_id: order_abc_123,
  value: 99.5,
  currency: USD,
  user: null,
  items: null,
  source_url: null,
  action_source: null,
  platform_data: null
)
```

