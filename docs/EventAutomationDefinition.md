# Zernio::EventAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** | A new event automation is on unless &#x60;paused&#x60;. | [optional][default to &#39;active&#39;] |
| **trigger** | [**AutomationEventTrigger**](AutomationEventTrigger.md) |  |  |
| **steps** | [**Array&lt;EventAutomationDefinitionStepsInner&gt;**](EventAutomationDefinitionStepsInner.md) | May be empty: an automation with no steps only records each event it matches as a check with outcome &#x60;triggered&#x60; and no action. &#x60;limits.cooldown&#x60; and &#x60;limits.maxChangesPerDay&#x60; count actions, so they do nothing for it. |  |
| **limits** | [**AutomationEventLimits**](AutomationEventLimits.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EventAutomationDefinition.new(
  name: null,
  status: null,
  trigger: null,
  steps: null,
  limits: null
)
```

