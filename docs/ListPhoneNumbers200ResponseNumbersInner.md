# Zernio::ListPhoneNumbers200ResponseNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **registrant_name** | **String** | For regulated numbers, who it&#39;s registered for (company or person) — set from the submitted KYC. | [optional] |
| **telnyx_order_id** | **String** | Present once the number order has been placed (i.e. the requirement group was approved). Absent while still in identity review. | [optional] |
| **monthly_cents** | **Integer** | Per-country monthly price in cents ($2..$25). | [optional] |
| **hosted_by_zernio** | **Boolean** | False for numbers you brought yourself (connected via Meta embedded signup) — they live on your own carrier, so SMS/Calls can&#39;t be enabled on them. | [optional] |
| **profile_id** | **Object** |  | [optional] |
| **provisioned_at** | **Time** |  | [optional] |
| **meta_preverified_id** | **String** |  | [optional] |
| **meta_verification_status** | **String** |  | [optional] |
| **onfido_verification_url** | **String** | For regulated (Tier 3/4) numbers with an Onfido ID-verification step — the link to forward to the end user. Set once the order is placed; null otherwise. Poll this field after submitting KYC. | [optional] |
| **end_user_first_name** | **String** |  | [optional] |
| **end_user_last_name** | **String** |  | [optional] |
| **regulatory_decline_reason** | **String** | Reviewer rejection reason when status is regulatory_declined. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListPhoneNumbers200ResponseNumbersInner.new(
  _id: null,
  phone_number: null,
  country: null,
  status: null,
  registrant_name: null,
  telnyx_order_id: null,
  monthly_cents: null,
  hosted_by_zernio: null,
  profile_id: null,
  provisioned_at: null,
  meta_preverified_id: null,
  meta_verification_status: null,
  onfido_verification_url: null,
  end_user_first_name: null,
  end_user_last_name: null,
  regulatory_decline_reason: null,
  created_at: null
)
```

