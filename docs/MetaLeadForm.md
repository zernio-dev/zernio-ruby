# Zernio::MetaLeadForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** | One of ACTIVE, ARCHIVED, DELETED or DRAFT. | [optional] |
| **locale** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **page_id** | **String** | Owning Facebook Page. A form on any other Page is a 404, whether read or archived. | [optional] |
| **leads_count** | **Integer** |  | [optional] |
| **organic_leads_count** | **Integer** |  | [optional] |
| **expired_leads_count** | **Integer** | Leads Meta has aged out of the retention window. | [optional] |
| **privacy_policy_url** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **follow_up_action_text** | **String** |  | [optional] |
| **question_page_custom_headline** | **String** |  | [optional] |
| **is_optimized_for_quality** | **Boolean** |  | [optional] |
| **block_display_for_non_targeted_viewer** | **Boolean** |  | [optional] |
| **allow_organic_lead** | **Boolean** | Whether the form can also be submitted from an organic Page post. | [optional] |
| **tracking_parameters** | [**Array&lt;BoostPostRequestTrackingUrlTagsInner&gt;**](BoostPostRequestTrackingUrlTagsInner.md) | Custom key/value pairs attached to every lead of this form. | [optional] |
| **legal_content** | [**MetaLeadFormLegalContent**](MetaLeadFormLegalContent.md) |  | [optional] |
| **context_card** | [**MetaLeadFormContextCard**](MetaLeadFormContextCard.md) |  | [optional] |
| **thank_you_page** | [**MetaLeadFormThankYouPage**](MetaLeadFormThankYouPage.md) |  | [optional] |
| **questions** | [**Array&lt;MetaLeadFormQuestionsInner&gt;**](MetaLeadFormQuestionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadForm.new(
  id: null,
  name: null,
  status: null,
  locale: en_US,
  created_time: null,
  page_id: null,
  leads_count: null,
  organic_leads_count: null,
  expired_leads_count: null,
  privacy_policy_url: null,
  follow_up_action_url: null,
  follow_up_action_text: null,
  question_page_custom_headline: null,
  is_optimized_for_quality: null,
  block_display_for_non_targeted_viewer: null,
  allow_organic_lead: null,
  tracking_parameters: null,
  legal_content: null,
  context_card: null,
  thank_you_page: null,
  questions: null
)
```

