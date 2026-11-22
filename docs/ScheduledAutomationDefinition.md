# Zernio::ScheduledAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** | A new scheduled automation is on unless &#x60;paused&#x60;. | [optional][default to &#39;active&#39;] |
| **trigger** | [**AutomationPostSchedule**](AutomationPostSchedule.md) |  |  |
| **subjects** | [**AutomationPostSubjects**](AutomationPostSubjects.md) |  |  |
| **filter** | [**AutomationFactCondition**](AutomationFactCondition.md) |  | [optional] |
| **steps** | [**Array&lt;ScheduledAutomationDefinitionStepsInner&gt;**](ScheduledAutomationDefinitionStepsInner.md) |  |  |
| **limits** | [**AutomationEventLimits**](AutomationEventLimits.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ScheduledAutomationDefinition.new(
  name: null,
  status: null,
  trigger: null,
  subjects: null,
  filter: null,
  steps: null,
  limits: null
)
```

