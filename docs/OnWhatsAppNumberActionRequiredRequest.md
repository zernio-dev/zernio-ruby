# Zernio::OnWhatsAppNumberActionRequiredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **reason** | **String** |  | [optional] |
| **requirements** | [**Array&lt;OnWhatsAppNumberActionRequiredRequestRequirementsInner&gt;**](OnWhatsAppNumberActionRequiredRequestRequirementsInner.md) | Every requirement on the order with the reviewer&#39;s current verdict. Omitted when the order&#39;s requirements could not be read. | [optional] |
| **reviewed_at** | **Time** | When the reviewer last commented on the order. Omitted when there is no reviewer comment. | [optional] |
| **number** | [**OnWhatsAppNumberDeclinedRequestNumber**](OnWhatsAppNumberDeclinedRequestNumber.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppNumberActionRequiredRequest.new(
  id: null,
  event: null,
  timestamp: null,
  reason: null,
  requirements: null,
  reviewed_at: null,
  number: null
)
```

