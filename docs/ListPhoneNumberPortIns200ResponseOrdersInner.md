# Zernio::ListPhoneNumberPortIns200ResponseOrdersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **telnyx_status_value** | **String** | Raw carrier status string. | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **fast_port_eligible** | **Boolean** |  | [optional] |
| **foc_datetime_requested** | **Time** |  | [optional] |
| **foc_datetime_actual** | **Time** |  | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **submitted_at** | **Time** |  | [optional] |
| **ported_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListPhoneNumberPortIns200ResponseOrdersInner.new(
  id: null,
  status: null,
  telnyx_status_value: null,
  phone_numbers: null,
  fast_port_eligible: null,
  foc_datetime_requested: null,
  foc_datetime_actual: null,
  decline_reason: null,
  submitted_at: null,
  ported_at: null,
  created_at: null
)
```

