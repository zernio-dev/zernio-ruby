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
| **is_optimized_for_quality** | **Boolean** |  | [optional] |
| **form_type** | **String** |  | [optional] |
| **block_display_for_non_targeted_viewer** | **Boolean** |  | [optional] |
| **allow_organic_lead_gen** | **Boolean** |  | [optional] |
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
  is_optimized_for_quality: null,
  form_type: null,
  block_display_for_non_targeted_viewer: null,
  allow_organic_lead_gen: null,
  question_page_custom_headline: null,
  context_card: null
)
```

