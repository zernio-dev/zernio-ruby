# Zernio::AutomationOneOf3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **String** | Only a sequence or a flow can be a draft. |  |
| **trigger** | [**SequenceAutomationDefinitionTrigger**](SequenceAutomationDefinitionTrigger.md) |  |  |
| **steps** | [**Array&lt;AutomationSequenceStep&gt;**](AutomationSequenceStep.md) | At least one step for an active sequence. Steps change only while it is a draft or paused. |  |
| **limits** | [**SequenceAutomationDefinitionLimits**](SequenceAutomationDefinitionLimits.md) |  | [optional] |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **version** | **String** | Send it back as &#x60;If-Match&#x60; when editing, so an edit made after someone else saved is refused. |  |
| **last_check_at** | **Time** | Null until an ad rule first checks. Always null for every other kind; the checks of event and scheduled automations list when they ran. |  |
| **next_check_at** | **Time** | Null while paused. Always null for every kind but ad rules. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **template** | [**AutomationRecordTemplate**](AutomationRecordTemplate.md) |  | [optional] |
| **platform** | **String** | The account&#39;s platform. On &#x60;whatsapp&#x60; every step sends a template. |  |
| **enrollments** | [**AutomationOneOf3AllOfEnrollments**](AutomationOneOf3AllOfEnrollments.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationOneOf3.new(
  name: null,
  description: null,
  status: null,
  trigger: null,
  steps: null,
  limits: null,
  id: null,
  kind: null,
  version: null,
  last_check_at: null,
  next_check_at: null,
  created_at: null,
  updated_at: null,
  template: null,
  platform: null,
  enrollments: null
)
```

