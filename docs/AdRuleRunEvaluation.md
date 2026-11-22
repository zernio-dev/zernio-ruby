# Zernio::AdRuleRunEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unread_objects** | **Integer** | On a run that matched nothing: how many objects had a condition whose value could not be read, so they could not match. A campaign with under 3 of the 4 previous weeks of data has no &#x60;usual&#x60; yet. | [optional] |
| **rule** | [**AdRuleRunEvaluationRule**](AdRuleRunEvaluationRule.md) |  | [optional] |
| **today** | **Date** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **timezone_assumed** | **Boolean** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **hourly_through** | **Time** | Where the run&#39;s hourly windows ended. Absent on runs recorded before November 2026. | [optional] |
| **matched** | [**Array&lt;AdRuleObjectEvaluation&gt;**](AdRuleObjectEvaluation.md) | The matched objects, at most 200. &#x60;matchedTotal&#x60; has the full count. | [optional] |
| **matched_total** | **Integer** | How many objects matched, including those past the 200 recorded. Absent on runs recorded before November 2026. | [optional] |
| **actions** | [**Array&lt;AdRuleRunEvaluationActionsInner&gt;**](AdRuleRunEvaluationActionsInner.md) |  | [optional] |
| **notification** | [**AdRuleRunEvaluationNotification**](AdRuleRunEvaluationNotification.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleRunEvaluation.new(
  unread_objects: null,
  rule: null,
  today: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  hourly_through: null,
  matched: null,
  matched_total: null,
  actions: null,
  notification: null
)
```

