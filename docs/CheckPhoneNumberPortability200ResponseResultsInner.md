# Zernio::CheckPhoneNumberPortability200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **portable** | **Boolean** |  | [optional] |
| **fast_portable** | **Boolean** | Qualifies for the carrier&#39;s accelerated FastPort lane. | [optional] |
| **messaging_capable** | **Boolean** | Whether texting can be enabled on the number once ported; null when the carrier does not say. | [optional] |
| **line_type** | **String** | Line type when known (mobile, landline, voip, toll-free, unknown). US/CA portable numbers only. A US/CA mobile number requires the transfer PIN at submit. | [optional] |
| **carrier_name** | **String** | The number&#39;s current carrier, when the lookup knows it. US/CA portable numbers only. | [optional] |
| **country_code** | **String** | ISO country of the number. Pass it to GET /v1/phone-numbers/port-in/requirements for international numbers. | [optional] |
| **phone_number_type** | **String** | Carrier number-type classification (local, mobile, national, toll_free...), the numberType for the requirements endpoint. | [optional] |
| **not_portable_reason** | **String** | Carrier reason when not portable; null when portable. | [optional] |
| **claim_id** | **String** | Keyless calls and claimLinks&#x3D;true only, on portable results. Resolve it with GET /v1/phone-numbers/port-in/claims/{claimId}. Expires after 7 days. | [optional] |
| **claim_url** | **String** | Keyless calls and claimLinks&#x3D;true only, on portable results. A signup link that lands on the dashboard&#39;s port form with this number filled in. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberPortability200ResponseResultsInner.new(
  phone_number: null,
  portable: null,
  fast_portable: null,
  messaging_capable: null,
  line_type: null,
  carrier_name: null,
  country_code: null,
  phone_number_type: null,
  not_portable_reason: null,
  claim_id: null,
  claim_url: null
)
```

