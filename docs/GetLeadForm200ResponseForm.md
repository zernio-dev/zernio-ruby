# Zernio::GetLeadForm200ResponseForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** | ARCHIVED forms can&#39;t receive new leads. | [optional] |
| **locale** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **leads_count** | **Integer** |  | [optional] |
| **privacy_policy_url** | **String** |  | [optional] |
| **follow_up_action_url** | **String** |  | [optional] |
| **questions** | [**Array&lt;GetLeadForm200ResponseFormQuestionsInner&gt;**](GetLeadForm200ResponseFormQuestionsInner.md) |  | [optional] |
| **thank_you_page** | [**GetLeadForm200ResponseFormThankYouPage**](GetLeadForm200ResponseFormThankYouPage.md) |  | [optional] |
| **context_card** | **Object** | Intro card shown before the form questions (title, content, button label). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLeadForm200ResponseForm.new(
  id: null,
  name: null,
  status: null,
  locale: EN_US,
  created_time: null,
  leads_count: null,
  privacy_policy_url: null,
  follow_up_action_url: null,
  questions: null,
  thank_you_page: null,
  context_card: null
)
```

