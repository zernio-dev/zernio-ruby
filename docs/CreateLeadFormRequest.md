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
| **is_optimized_for_quality** | **Boolean** |  | [optional] |

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
  is_optimized_for_quality: null
)
```

