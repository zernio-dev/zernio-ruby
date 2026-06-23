# Zernio::OnWhatsAppNumberKycSubmittedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **number** | [**OnWhatsAppNumberDeclinedRequestNumber**](OnWhatsAppNumberDeclinedRequestNumber.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppNumberKycSubmittedRequest.new(
  id: null,
  event: null,
  timestamp: null,
  number: null
)
```

