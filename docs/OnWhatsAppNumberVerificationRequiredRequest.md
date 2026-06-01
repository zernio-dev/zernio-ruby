# Zernio::OnWhatsAppNumberVerificationRequiredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **number** | [**OnWhatsAppNumberDeclinedRequestNumber**](OnWhatsAppNumberDeclinedRequestNumber.md) |  | [optional] |
| **verification_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnWhatsAppNumberVerificationRequiredRequest.new(
  id: null,
  event: null,
  timestamp: null,
  number: null,
  verification_url: null
)
```

