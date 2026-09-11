# Zernio::MetaLeadFormQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **type** | **String** | EMAIL, PHONE, FULL_NAME, CUSTOM, ... | [optional] |
| **inline_context** | **String** |  | [optional] |
| **options** | [**Array&lt;BoostPostRequestTrackingUrlTagsInner&gt;**](BoostPostRequestTrackingUrlTagsInner.md) |  | [optional] |
| **conditional_questions_group_id** | **String** | READ-ONLY. Conditional logic can only be authored in Meta form builder; Meta has no create parameter for it. | [optional] |
| **conditional_questions_choices** | **Array&lt;Object&gt;** | READ-ONLY. Which answers reveal the conditional group. | [optional] |
| **dependent_conditional_questions** | **Array&lt;Object&gt;** | READ-ONLY. Questions revealed by the conditional group. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadFormQuestionsInner.new(
  id: null,
  key: null,
  label: null,
  type: null,
  inline_context: null,
  options: null,
  conditional_questions_group_id: null,
  conditional_questions_choices: null,
  dependent_conditional_questions: null
)
```

