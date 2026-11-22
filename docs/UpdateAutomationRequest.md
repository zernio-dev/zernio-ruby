# Zernio::UpdateAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** | Sequences and flows. | [optional] |
| **status** | **String** | &#x60;draft&#x60; only for a sequence or a flow that has not left draft. | [optional] |
| **trigger** | **Object** | The trigger of the automation&#39;s kind. | [optional] |
| **or_triggers** | **Array&lt;Object&gt;** | Comment to DM. | [optional] |
| **graph** | **Object** | Comment to DM and flows: the whole graph, as read. | [optional] |
| **subjects** | [**UpdateAutomationRequestSubjects**](UpdateAutomationRequestSubjects.md) |  | [optional] |
| **filter** | [**AutomationFactCondition**](AutomationFactCondition.md) |  | [optional] |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  | [optional] |
| **alert** | [**AutomationAlert**](AutomationAlert.md) |  | [optional] |
| **steps** | [**Array&lt;UpdateAutomationRequestStepsInner&gt;**](UpdateAutomationRequestStepsInner.md) | The steps the automation&#39;s kind takes. | [optional] |
| **limits** | **Object** | The limits of the automation&#39;s kind. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAutomationRequest.new(
  name: null,
  description: null,
  status: null,
  trigger: null,
  or_triggers: null,
  graph: null,
  subjects: null,
  filter: null,
  conditions: null,
  alert: null,
  steps: null,
  limits: null
)
```

