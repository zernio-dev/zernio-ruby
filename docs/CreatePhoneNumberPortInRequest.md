# Zernio::CreatePhoneNumberPortInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_numbers** | **Array&lt;String&gt;** | E.164 numbers to port in. |  |
| **end_user** | [**CreatePhoneNumberPortInRequestEndUser**](CreatePhoneNumberPortInRequestEndUser.md) |  |  |
| **loa_document_id** | **String** | Document id from POST /v1/phone-numbers/port-in/documents (kind&#x3D;loa). |  |
| **invoice_document_id** | **String** | Document id from POST /v1/phone-numbers/port-in/documents (kind&#x3D;invoice). |  |
| **foc_datetime_requested** | **Time** | Requested port date; the carrier confirms the actual FOC later. | [optional] |
| **customer_reference** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortInRequest.new(
  phone_numbers: null,
  end_user: null,
  loa_document_id: null,
  invoice_document_id: null,
  foc_datetime_requested: null,
  customer_reference: null
)
```

