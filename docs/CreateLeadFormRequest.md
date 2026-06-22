# Zernio::CreateLeadFormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **questions** | [**Array&lt;CreateLeadFormRequestQuestionsInner&gt;**](CreateLeadFormRequestQuestionsInner.md) |  |  |
| **privacy_policy_url** | **String** |  |  |
| **privacy_policy_link_text** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **thank_you_title** | **String** |  | [optional] |
| **thank_you_body** | **String** |  | [optional] |
| **thank_you_button_text** | **String** |  | [optional] |
| **thank_you_button_type** | **String** |  | [optional] |
| **thank_you_website_url** | **String** |  | [optional] |
| **is_optimized_for_quality** | **Boolean** | Legacy form type toggle. Prefer formType instead. false &#x3D; More Volume, true &#x3D; Higher Intent. | [optional] |
| **form_type** | **String** | Form type. MORE_VOLUME &#x3D; optimized for lead quantity (default). HIGHER_INTENT &#x3D; adds a review/confirmation step before submit. RICH_CREATIVE &#x3D; includes context card and custom headline to educate users before they submit. Supersedes isOptimizedForQuality. | [optional] |
| **block_display_for_non_targeted_viewer** | **Boolean** | Sharing setting. true &#x3D; Restricted (only people targeted by the ad can open the form link). false &#x3D; Open (shareable link, default). | [optional] |
| **allow_organic_lead_gen** | **Boolean** | Flexible form delivery. true &#x3D; the form can surface organically on the Page (not just as a paid ad). Defaults to false. | [optional] |
| **question_page_custom_headline** | **String** | Custom subheadline shown above the form fields on the questions page (the contact-information section description). Defaults to Meta&#39;s generic copy when omitted. | [optional] |
| **context_card** | [**CreateLeadFormRequestContextCard**](CreateLeadFormRequestContextCard.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormRequest.new(
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

