# Zernio::AdRuleAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** | A new ad rule stays paused unless &#x60;active&#x60;. | [optional][default to &#39;paused&#39;] |
| **trigger** | [**AutomationScheduleTrigger**](AutomationScheduleTrigger.md) |  |  |
| **subjects** | [**AutomationSubjects**](AutomationSubjects.md) |  |  |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  |  |
| **alert** | [**AutomationAlert**](AutomationAlert.md) |  | [optional] |
| **steps** | [**Array&lt;AutomationStep&gt;**](AutomationStep.md) |  |  |
| **limits** | [**AutomationLimits**](AutomationLimits.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleAutomationDefinition.new(
  name: null,
  status: null,
  trigger: null,
  subjects: null,
  conditions: null,
  alert: null,
  steps: null,
  limits: null
)
```

