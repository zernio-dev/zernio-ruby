# Zernio::CreatePhoneNumberPortIn201ResponseOrdersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **telnyx_porting_order_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **error** | **String** | Present when this split order failed to submit (it stays as a cancellable draft). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortIn201ResponseOrdersInner.new(
  id: null,
  telnyx_porting_order_id: null,
  status: null,
  phone_numbers: null,
  error: null
)
```

