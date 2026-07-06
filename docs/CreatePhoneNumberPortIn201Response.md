# Zernio::CreatePhoneNumberPortIn201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Porting order ID. | [optional] |
| **telnyx_porting_order_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **orders** | [**Array&lt;CreatePhoneNumberPortIn201ResponseOrdersInner&gt;**](CreatePhoneNumberPortIn201ResponseOrdersInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortIn201Response.new(
  id: null,
  telnyx_porting_order_id: null,
  status: null,
  phone_numbers: null,
  orders: null
)
```

