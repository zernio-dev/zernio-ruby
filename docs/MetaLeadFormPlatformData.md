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
| **thank_you_button_type** | **String** |  | [optional] |
| **thank_you_website_url** | **String** |  | [optional] |
| **thank_you_enable_messenger** | **Boolean** | Adds a &#39;Continue in Messenger&#39; option to the thank-you page (Meta thank_you_page.enable_messenger), so the lead can carry on chatting with the Page. Set thankYouButtonType to MESSAGE_BUSINESS or P2B_MESSENGER to make the chat the primary button. | [optional][default to false] |
| **is_optimized_for_quality** | **Boolean** | Set true for a higher-intent form (adds a review step before submit). | [optional] |
| **is_phone_sms_verify_enabled** | **Boolean** | Requires the lead to verify their phone number over SMS before the form submits (Meta is_phone_sms_verify_enabled). Only meaningful on a form with a PHONE question. Meta can restrict this parameter to apps holding a capability: when it does, the create fails with a 422 naming platformSpecificData.isPhoneSmsVerifyEnabled, and the toggle then has to be set in Meta&#39;s form builder. | [optional][default to false] |
| **block_display_for_non_targeted_viewer** | **Boolean** |  | [optional] |
| **question_page_custom_headline** | **String** |  | [optional] |
| **context_card** | [**MetaLeadFormPlatformDataContextCard**](MetaLeadFormPlatformDataContextCard.md) |  | [optional] |

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
  thank_you_website_url: null,
  thank_you_enable_messenger: null,
  is_optimized_for_quality: null,
  is_phone_sms_verify_enabled: null,
  block_display_for_non_targeted_viewer: null,
  question_page_custom_headline: null,
  context_card: null
)
```

