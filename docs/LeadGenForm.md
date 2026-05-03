# Zernio::LeadGenForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **leads_count** | **Integer** | Total leads (real + organic). | [optional] |
| **organic_leads_count** | **Integer** |  | [optional] |
| **expired_leads_count** | **Integer** |  | [optional] |
| **questions** | [**Array&lt;LeadGenFormQuestion&gt;**](LeadGenFormQuestion.md) |  | [optional] |
| **privacy_policy_url** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **thank_you_page** | **Object** |  | [optional] |
| **context_card** | **Object** |  | [optional] |
| **question_page_custom_headline** | **String** |  | [optional] |
| **is_optimized_for_quality** | **Boolean** |  | [optional] |
| **page_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LeadGenForm.new(
  id: null,
  name: null,
  status: null,
  locale: EN_US,
  created_time: null,
  leads_count: null,
  organic_leads_count: null,
  expired_leads_count: null,
  questions: null,
  privacy_policy_url: null,
  follow_up_action_url: null,
  thank_you_page: null,
  context_card: null,
  question_page_custom_headline: null,
  is_optimized_for_quality: null,
  page_id: null
)
```

