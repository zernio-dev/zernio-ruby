# Zernio::MetaLeadFormPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **questions** | [**Array&lt;CreateLeadFormRequestQuestionsInner&gt;**](CreateLeadFormRequestQuestionsInner.md) |  |  |
| **privacy_policy_link_text** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **thank_you_title** | **String** |  | [optional] |
| **thank_you_body** | **String** |  | [optional] |
| **thank_you_button_text** | **String** |  | [optional] |
| **thank_you_button_type** | **String** | Meta thank_you_page.button_type. Defaults to VIEW_WEBSITE. Case-insensitive, sent to Meta in uppercase. CALL_BUSINESS requires businessPhoneNumber and countryCode (a 400 otherwise). Meta rejects MESSAGE_BUSINESS on thank-you pages with (#100) This button type is not yet supported for Thank You Page. | [optional] |
| **business_phone_number** | **String** | International E.164 number the CALL_BUSINESS thank-you button dials (Meta thank_you_page.business_phone_number). It must start with + and the country calling code matching countryCode; spaces, dashes, dots and parentheses are stripped, and a local number such as 2025550123 is a 400. Required when thankYouButtonType is CALL_BUSINESS and a 400 with any other button type. Accepted only inside platformSpecificData: a top-level businessPhoneNumber is a 400. | [optional] |
| **country_code** | **String** | ISO 3166-1 alpha-2 country of businessPhoneNumber (Meta thank_you_page.country_code), sent in uppercase. Required when thankYouButtonType is CALL_BUSINESS and a 400 with any other button type. Accepted only inside platformSpecificData: a top-level countryCode is a 400. | [optional] |
| **thank_you_website_url** | **String** |  | [optional] |
| **thank_you_enable_messenger** | **Boolean** | Sent as Meta thank_you_page.enable_messenger (boolean). Accepted only inside platformSpecificData: a top-level thankYouEnableMessenger is a 400. | [optional][default to false] |
| **is_optimized_for_quality** | **Boolean** | Set true for a higher-intent form (adds a review step before submit). | [optional] |
| **is_phone_sms_verify_enabled** | **Boolean** | Requires the lead to verify their phone number over SMS before the form submits (Meta is_phone_sms_verify_enabled). Only meaningful on a form with a PHONE question. Meta can restrict this parameter to apps holding a capability: when it does, the create fails with a 422 naming platformSpecificData.isPhoneSmsVerifyEnabled, and the toggle then has to be set in Meta&#39;s form builder. | [optional][default to false] |
| **block_display_for_non_targeted_viewer** | **Boolean** |  | [optional] |
| **question_page_custom_headline** | **String** |  | [optional] |
| **context_card** | [**MetaLeadFormPlatformDataContextCard**](MetaLeadFormPlatformDataContextCard.md) |  | [optional] |
| **custom_disclaimer** | [**MetaLeadFormPlatformDataCustomDisclaimer**](MetaLeadFormPlatformDataCustomDisclaimer.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadFormPlatformData.new(
  questions: null,
  privacy_policy_link_text: null,
  follow_up_action_url: null,
  locale: EN_US,
  thank_you_title: null,
  thank_you_body: null,
  thank_you_button_text: null,
  thank_you_button_type: VIEW_WEBSITE,
  business_phone_number: +12025550123,
  country_code: US,
  thank_you_website_url: null,
  thank_you_enable_messenger: null,
  is_optimized_for_quality: null,
  is_phone_sms_verify_enabled: null,
  block_display_for_non_targeted_viewer: null,
  question_page_custom_headline: null,
  context_card: null,
  custom_disclaimer: null
)
```

