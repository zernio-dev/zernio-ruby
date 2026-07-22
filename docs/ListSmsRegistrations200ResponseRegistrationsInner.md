# Zernio::ListSmsRegistrations200ResponseRegistrationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **registration_type** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **status** | **String** | requested/changes_requested &#x3D; pre-submission review states; customers see them as pending / needs changes. | [optional] |
| **brand_status** | **String** | Carrier-registry brand status (e.g. VERIFIED). | [optional] |
| **campaign_status** | **String** |  | [optional] |
| **brand_id** | **String** | TCR brand id, useful when referencing the brand in carrier support threads. | [optional] |
| **campaign_id** | **String** | TCR campaign id. | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **tf_action_required_at** | **Time** | Toll-free only: when the carrier requested changes (\&quot;Waiting For Customer\&quot;). The request must be resubmitted within 7 days of this timestamp or it expires. | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **awaiting_otp** | **Boolean** | Sole-prop 10DLC only; the OTP step is still pending. | [optional] |
| **trust_score** | **Float** | Carrier-assigned brand trust score; drives throughput. | [optional] |
| **throughput** | [**ListSmsRegistrations200ResponseRegistrationsInnerThroughput**](ListSmsRegistrations200ResponseRegistrationsInnerThroughput.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSmsRegistrations200ResponseRegistrationsInner.new(
  id: null,
  registration_type: null,
  display_name: null,
  status: null,
  brand_status: null,
  campaign_status: null,
  brand_id: null,
  campaign_id: null,
  decline_reason: null,
  tf_action_required_at: null,
  phone_numbers: null,
  awaiting_otp: null,
  trust_score: null,
  throughput: null
)
```

