# Zernio::OwnedPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **number_type** | **String** | For example local, mobile, national or toll_free. | [optional] |
| **status** | **String** |  | [optional] |
| **profile_id** | [**OwnedPhoneNumberProfileId**](OwnedPhoneNumberProfileId.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **telnyx_order_id** | **String** | Present once the number order has been placed (i.e. the requirement group was approved). Absent while still in identity review. | [optional] |
| **telnyx_advanced_order_id** | **String** | Present on a pre-order: the carrier request placed for a number with no stock yet. | [optional] |
| **registrant_name** | **String** | For regulated numbers, who it&#39;s registered for (company or person), set from the submitted KYC. | [optional] |
| **end_user_first_name** | **String** |  | [optional] |
| **end_user_last_name** | **String** |  | [optional] |
| **regulatory_decline_reason** | **String** | Reviewer rejection reason when status is regulatory_declined. | [optional] |
| **regulatory_review_comment** | **String** | The latest reviewer comment on a regulated number still in review. | [optional] |
| **regulatory_info_status** | **String** | &#x60;action_required&#x60; when the reviewer is waiting on you. | [optional] |
| **onfido_verification_url** | **String** | For regulated (Tier 3/4) numbers with an Onfido ID-verification step: the link to forward to the end user. Set once the order is placed; null otherwise. Poll this field after submitting KYC. | [optional] |
| **verify_url** | **String** | Stable redirect to the live Onfido session. Prefer it over &#x60;onfidoVerificationUrl&#x60;, since it always resolves to a fresh session. | [optional] |
| **onfido_opened** | **Boolean** | True once the verify link has been opened at least once. | [optional] |
| **meta_preverified_id** | **String** |  | [optional] |
| **meta_verification_status** | **String** |  | [optional] |
| **meta_verified_at** | **Time** |  | [optional] |
| **meta_verification_expires_at** | **Time** |  | [optional] |
| **social_account_id** | **String** | The WhatsApp account the number is linked to; null when WhatsApp is not connected. | [optional] |
| **owner_account_id** | **String** | The telephony account that owns Calls and SMS on the number. | [optional] |
| **sip_trunk_id** | **String** | SIP trunk the number is attached to; null when not trunked. While attached, enabling Calls or WhatsApp calling, requesting WhatsApp verification, and releasing the number all return 409. | [optional] |
| **whats_app_requested** | **Boolean** | False for a standalone phone bought for Calls or SMS only. | [optional] |
| **sms_requested** | **Boolean** |  | [optional] |
| **provisioned_at** | **Time** |  | [optional] |
| **activated_at** | **Time** |  | [optional] |
| **connected_at** | **Time** |  | [optional] |
| **suspended_at** | **Time** |  | [optional] |
| **released_at** | **Time** |  | [optional] |
| **signup_error** | **String** | Meta&#39;s Embedded Signup error from the last failed connect attempt (raw text, often localized). | [optional] |
| **signup_error_at** | **Time** |  | [optional] |
| **signup_error_step** | **String** |  | [optional] |
| **monthly_cents** | **Integer** | What this number bills each month, in cents. Stamped when the number was bought, so an existing number keeps its price when the rate card changes. | [optional] |
| **hosted_by_zernio** | **Boolean** | False for numbers you brought yourself (connected via Meta embedded signup). They live on your own carrier, so SMS/Calls can&#39;t be enabled on them. | [optional] |
| **sms_capable** | **Boolean** | Whether the number can send SMS. Absent while unknown. | [optional] |
| **mms_capable** | **Boolean** | Whether the number can send MMS. Absent while unknown. | [optional] |
| **domestic_only** | **Boolean** | True when the number can only text numbers in its own country. Absent while unknown. | [optional] |
| **sms_registration_pending** | **Boolean** | True while a 10DLC registration covering this number is in review. | [optional] |
| **sms_send_approved** | **Boolean** | True when outbound SMS is unlocked: an approved 10DLC covers the number, or the number is outside the US. | [optional] |
| **sms_brand_name** | **String** | Brand of the 10DLC registration covering the number. | [optional] |
| **features** | [**OwnedPhoneNumberFeatures**](OwnedPhoneNumberFeatures.md) |  | [optional] |
| **calling_enabled** | **Boolean** | Whether WhatsApp Business Calling is enabled on this number (manage via /v1/whatsapp/phone-numbers/{id}/calling). | [optional] |
| **forward_to** | **String** | WhatsApp calling forward destination. | [optional] |
| **sip_auth_username** | **String** | SIP digest username for a sip: forward destination. The password is never returned. | [optional] |
| **caller_id_verified_at** | **Time** |  | [optional] |
| **max_call_duration_seconds** | **Integer** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **transcription_enabled** | **Boolean** |  | [optional] |
| **transcription_language** | **String** |  | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |
| **forward_caller_id** | **String** |  | [optional] |
| **pstn_voice_enabled** | **Boolean** | Whether Calls (PSTN voice) is on. | [optional] |
| **pstn_forward_to** | **String** |  | [optional] |
| **voicemail_enabled** | **Boolean** |  | [optional] |
| **voicemail_greeting** | **String** |  | [optional] |
| **business_hours_enabled** | **Boolean** |  | [optional] |
| **business_hours_timezone** | **String** |  | [optional] |
| **business_hours** | [**Array&lt;EnableVoiceOnNumber200ResponseBusinessHoursInner&gt;**](EnableVoiceOnNumber200ResponseBusinessHoursInner.md) |  | [optional] |
| **blocked_callers** | **Array&lt;String&gt;** |  | [optional] |
| **ivr_enabled** | **Boolean** |  | [optional] |
| **ivr_prompt** | **String** |  | [optional] |
| **ivr_options** | [**Array&lt;EnableVoiceOnNumber200ResponseIvrOptionsInner&gt;**](EnableVoiceOnNumber200ResponseIvrOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OwnedPhoneNumber.new(
  _id: null,
  phone_number: null,
  country: null,
  number_type: null,
  status: null,
  profile_id: null,
  created_at: null,
  updated_at: null,
  telnyx_order_id: null,
  telnyx_advanced_order_id: null,
  registrant_name: null,
  end_user_first_name: null,
  end_user_last_name: null,
  regulatory_decline_reason: null,
  regulatory_review_comment: null,
  regulatory_info_status: null,
  onfido_verification_url: null,
  verify_url: null,
  onfido_opened: null,
  meta_preverified_id: null,
  meta_verification_status: null,
  meta_verified_at: null,
  meta_verification_expires_at: null,
  social_account_id: null,
  owner_account_id: null,
  sip_trunk_id: null,
  whats_app_requested: null,
  sms_requested: null,
  provisioned_at: null,
  activated_at: null,
  connected_at: null,
  suspended_at: null,
  released_at: null,
  signup_error: null,
  signup_error_at: null,
  signup_error_step: null,
  monthly_cents: null,
  hosted_by_zernio: null,
  sms_capable: null,
  mms_capable: null,
  domestic_only: null,
  sms_registration_pending: null,
  sms_send_approved: null,
  sms_brand_name: null,
  features: null,
  calling_enabled: null,
  forward_to: null,
  sip_auth_username: null,
  caller_id_verified_at: null,
  max_call_duration_seconds: null,
  recording_enabled: null,
  transcription_enabled: null,
  transcription_language: null,
  call_icon_countries: null,
  forward_caller_id: null,
  pstn_voice_enabled: null,
  pstn_forward_to: null,
  voicemail_enabled: null,
  voicemail_greeting: null,
  business_hours_enabled: null,
  business_hours_timezone: null,
  business_hours: null,
  blocked_callers: null,
  ivr_enabled: null,
  ivr_prompt: null,
  ivr_options: null
)
```

