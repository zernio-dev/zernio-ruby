# Zernio::OnWhatsAppNumberActionRequiredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **number** | [**OnWhatsAppNumberDeclinedRequestNumber**](OnWhatsAppNumberDeclinedRequestNumber.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppNumberActionRequiredRequest.new(
  id: null,
  event: null,
  timestamp: null,
  reason: null,
  number: null
)
```

