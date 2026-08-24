# Zernio::GetPhoneNumber200ResponsePhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **meta_preverified_id** | **String** |  | [optional] |
| **meta_verification_status** | **String** |  | [optional] |
| **onfido_verification_url** | **String** | For a regulated number with an Onfido ID step — the link to forward to the end user. Appears once the order is placed; null otherwise. | [optional] |
| **end_user_first_name** | **String** |  | [optional] |
| **end_user_last_name** | **String** |  | [optional] |
| **regulatory_decline_reason** | **String** | Reviewer rejection reason when status is regulatory_declined. | [optional] |
| **provisioned_at** | **Time** |  | [optional] |
| **sip_trunk_id** | **String** | SIP trunk the number is attached to; null when not trunked. While attached, enabling Calls or WhatsApp calling, requesting WhatsApp verification, and releasing the number all return 409. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumber200ResponsePhoneNumber.new(
  id: null,
  phone_number: null,
  status: null,
  country: null,
  meta_preverified_id: null,
  meta_verification_status: null,
  onfido_verification_url: null,
  end_user_first_name: null,
  end_user_last_name: null,
  regulatory_decline_reason: null,
  provisioned_at: null,
  sip_trunk_id: null
)
```

