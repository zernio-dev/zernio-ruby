# Zernio::AutomationOneOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** | Only a sequence or a flow can be a draft. |  |
| **trigger** | [**AutomationPostSchedule**](AutomationPostSchedule.md) |  |  |
| **subjects** | [**AutomationPostSubjects**](AutomationPostSubjects.md) |  |  |
| **filter** | [**AutomationFactCondition**](AutomationFactCondition.md) |  | [optional] |
| **steps** | [**Array&lt;ScheduledAutomationDefinitionStepsInner&gt;**](ScheduledAutomationDefinitionStepsInner.md) |  |  |
| **limits** | [**AutomationEventLimits**](AutomationEventLimits.md) |  | [optional] |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **version** | **String** | Send it back as &#x60;If-Match&#x60; when editing, so an edit made after someone else saved is refused. |  |
| **last_check_at** | **Time** | Null until an ad rule first checks. Always null for every other kind; the checks of event and scheduled automations list when they ran. |  |
| **next_check_at** | **Time** | Null while paused. Always null for every kind but ad rules. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **template** | [**AutomationRecordTemplate**](AutomationRecordTemplate.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationOneOf2.new(
  name: null,
  status: null,
  trigger: null,
  subjects: null,
  filter: null,
  steps: null,
  limits: null,
  id: null,
  kind: null,
  version: null,
  last_check_at: null,
  next_check_at: null,
  created_at: null,
  updated_at: null,
  template: null
)
```

