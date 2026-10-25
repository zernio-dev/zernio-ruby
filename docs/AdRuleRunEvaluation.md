# Zernio::AdRuleRunEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **today** | **Date** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **timezone_assumed** | **Boolean** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **matched** | [**Array&lt;AdRuleObjectEvaluation&gt;**](AdRuleObjectEvaluation.md) |  | [optional] |
| **actions** | [**Array&lt;AdRuleRunEvaluationActionsInner&gt;**](AdRuleRunEvaluationActionsInner.md) |  | [optional] |
| **notification** | [**AdRuleRunEvaluationNotification**](AdRuleRunEvaluationNotification.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleRunEvaluation.new(
  today: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  matched: null,
  actions: null,
  notification: null
)
```

