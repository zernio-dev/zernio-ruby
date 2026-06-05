# Zernio::OnWhatsAppNumberSuspendedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **number** | [**OnWhatsAppNumberDeclinedRequestNumber**](OnWhatsAppNumberDeclinedRequestNumber.md) |  | [optional] |
| **reason** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppNumberSuspendedRequest.new(
  id: null,
  event: null,
  timestamp: null,
  number: null,
  reason: null
)
```

