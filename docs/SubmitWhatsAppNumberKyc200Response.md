# Zernio::SubmitWhatsAppNumberKyc200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **phone_number** | [**SubmitWhatsAppNumberKyc200ResponsePhoneNumber**](SubmitWhatsAppNumberKyc200ResponsePhoneNumber.md) |  | [optional] |
| **numbers** | [**Array&lt;SubmitWhatsAppNumberKyc200ResponseNumbersInner&gt;**](SubmitWhatsAppNumberKyc200ResponseNumbersInner.md) | Every number provisioned from this submission. Length equals the requested &#x60;quantity&#x60; on full success (fewer if some orders failed; best-effort). The first element mirrors &#x60;phoneNumber&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitWhatsAppNumberKyc200Response.new(
  status: null,
  phone_number: null,
  numbers: null
)
```

