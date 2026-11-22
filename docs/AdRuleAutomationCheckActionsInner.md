# Zernio::AdRuleAutomationCheckActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step** | **String** | The id of the step that made it, for example &#x60;budget&#x60;. |  |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | Why it was skipped or failed, such as &#x60;already_paused&#x60;, &#x60;daily_limit_reached&#x60; or &#x60;awaiting_approval&#x60;. |  |
| **previous** | [**AutomationChangedValue**](AutomationChangedValue.md) |  |  |
| **target** | [**AutomationChangedValue**](AutomationChangedValue.md) |  |  |
| **subject_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleAutomationCheckActionsInner.new(
  step: null,
  type: null,
  status: null,
  reason: null,
  previous: null,
  target: null,
  subject_id: null
)
```

