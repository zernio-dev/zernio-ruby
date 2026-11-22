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
| **previous_name** | **String** |  | [optional] |
| **new_name** | **String** |  | [optional] |
| **previous_bid_amount** | **Float** |  | [optional] |
| **new_bid_amount** | **Float** |  | [optional] |
| **target_metric** | **String** |  | [optional] |
| **previous_target** | **Float** |  | [optional] |
| **new_target** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleRunEvaluationActionsInner.new(
  object_id: null,
  type: null,
  status: null,
  reason: null,
  previous_daily_budget: null,
  new_daily_budget: null,
  previous_name: null,
  new_name: null,
  previous_bid_amount: null,
  new_bid_amount: null,
  target_metric: null,
  previous_target: null,
  new_target: null
)
```

