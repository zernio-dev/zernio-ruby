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
| **admin_review_note** | **String** | The open change request as text (status changes_requested). | [optional] |
| **last_response_at** | **Time** | When you last answered a change request. | [optional] |
| **previously_rejected** | **Boolean** | Rejected by the carriers at least once. A pending registration with this set is our fix, back with the carriers. | [optional] |
| **last_rejected_at** | **Time** | When the carriers last rejected it. | [optional] |
| **rejected_before_submission** | **Boolean** | Rejected in our review before anything was filed with the carriers (not a carrier rejection; nothing to fix or appeal). | [optional] |
| **otp_expired** | **Boolean** | Sole proprietor only: the verification code was never entered within 30 days. Start SMS setup again; it revives the same brand with no second brand fee. | [optional] |
| **review_request** | [**SmsRegistrationReviewRequest**](SmsRegistrationReviewRequest.md) |  | [optional] |
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
  admin_review_note: null,
  last_response_at: null,
  previously_rejected: null,
  last_rejected_at: null,
  rejected_before_submission: null,
  otp_expired: null,
  review_request: null,
  trust_score: null,
  throughput: null
)
```

