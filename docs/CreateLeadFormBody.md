# Zernio::CreateLeadFormBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook social account ID (Late SocialAccount _id). |  |
| **name** | **String** |  |  |
| **questions** | [**Array&lt;LeadGenFormQuestion&gt;**](LeadGenFormQuestion.md) |  |  |
| **privacy_policy_url** | **String** | Required by Meta. Must be reachable from Meta&#39;s crawler. |  |
| **privacy_policy_link_text** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **thank_you_title** | **String** |  | [optional] |
| **thank_you_body** | **String** |  | [optional] |
| **thank_you_button_text** | **String** |  | [optional] |
| **thank_you_button_type** | **String** | Meta enum (e.g. VIEW_WEBSITE, CALL_BUSINESS, DOWNLOAD) | [optional] |
| **thank_you_website_url** | **String** |  | [optional] |
| **is_optimized_for_quality** | **Boolean** |  | [optional] |
| **context_card** | [**CreateLeadFormBodyContextCard**](CreateLeadFormBodyContextCard.md) |  | [optional] |
| **legal_content** | [**CreateLeadFormBodyLegalContent**](CreateLeadFormBodyLegalContent.md) |  | [optional] |
| **tracking_parameters** | **Hash&lt;String, String&gt;** | Up to 20 key/value pairs surfaced on every lead for attribution. | [optional] |
| **question_page_custom_headline** | **String** |  | [optional] |
| **allow_organic_lead** | **Boolean** |  | [optional] |
| **block_display_for_non_targeted_viewer** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormBody.new(
  account_id: null,
  name: null,
  questions: null,
  privacy_policy_url: null,
  privacy_policy_link_text: null,
  follow_up_action_url: null,
  locale: EN_US,
  thank_you_title: null,
  thank_you_body: null,
  thank_you_button_text: null,
  thank_you_button_type: null,
  thank_you_website_url: null,
  is_optimized_for_quality: null,
  context_card: null,
  legal_content: null,
  tracking_parameters: null,
  question_page_custom_headline: null,
  allow_organic_lead: null,
  block_display_for_non_targeted_viewer: null
)
```

