# Zernio::AdRuleRunEvaluationActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_id** | **String** |  |  |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | Why it was skipped or failed, for example &#x60;already_paused&#x60;. | [optional] |
| **previous_daily_budget** | **Float** |  | [optional] |
| **new_daily_budget** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleRunEvaluationActionsInner.new(
  object_id: null,
  type: null,
  status: null,
  reason: null,
  previous_daily_budget: null,
  new_daily_budget: null
)
```

