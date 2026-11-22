# Zernio::SequenceAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **String** | A new sequence is on unless &#x60;draft&#x60;. A draft can be activated; a sequence that ran can only be paused and activated again. | [optional][default to &#39;active&#39;] |
| **trigger** | [**SequenceAutomationDefinitionTrigger**](SequenceAutomationDefinitionTrigger.md) |  |  |
| **steps** | [**Array&lt;AutomationSequenceStep&gt;**](AutomationSequenceStep.md) | At least one step for an active sequence. Steps change only while it is a draft or paused. |  |
| **limits** | [**SequenceAutomationDefinitionLimits**](SequenceAutomationDefinitionLimits.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SequenceAutomationDefinition.new(
  name: null,
  description: null,
  status: null,
  trigger: null,
  steps: null,
  limits: null
)
```

