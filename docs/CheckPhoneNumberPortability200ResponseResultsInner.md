# Zernio::CheckPhoneNumberPortability200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **portable** | **Boolean** |  | [optional] |
| **fast_portable** | **Boolean** | Qualifies for the carrier&#39;s accelerated FastPort lane. | [optional] |
| **line_type** | **String** | Line type when known (mobile, landline, voip…). A US/CA mobile number requires the transfer PIN at submit. | [optional] |
| **country_code** | **String** | ISO country of the number — pass it to GET /v1/phone-numbers/port-in/requirements for international numbers. | [optional] |
| **phone_number_type** | **String** | Carrier number-type classification (local, mobile, national, toll_free…) — the numberType for the requirements endpoint. | [optional] |
| **not_portable_reason** | **String** | Carrier reason when not portable; null when portable. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberPortability200ResponseResultsInner.new(
  phone_number: null,
  portable: null,
  fast_portable: null,
  line_type: null,
  country_code: null,
  phone_number_type: null,
  not_portable_reason: null
)
```

