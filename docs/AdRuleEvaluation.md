# Zernio::AdRuleEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluated_at** | **Time** |  |  |
| **today** | **Date** | The ad account&#39;s calendar date the windows were resolved against. |  |
| **timezone** | **String** | IANA timezone of the ad account. |  |
| **timezone_assumed** | **Boolean** | True when the ad account has no known timezone and UTC was assumed. |  |
| **currency** | **String** |  |  |
| **hourly_through** | **Time** | Where the hourly windows (&#x60;last_complete_hour&#x60;, &#x60;last_3h&#x60;, &#x60;today_so_far&#x60;) ended: the end of the latest hour a sync has settled. Null when the rule has none or they could not be read. | [optional] |
| **matched** | **Integer** | How many objects meet every condition. |  |
| **objects** | [**Array&lt;AdRuleObjectEvaluation&gt;**](AdRuleObjectEvaluation.md) | Every delivering campaign, ad set or ad in scope, or every serving keyword and listed search term (for an &#x60;activate&#x60; rule, the rule-paused objects it may reactivate). |  |
| **groups** | [**Array&lt;AdRuleEvaluationGroupsInner&gt;**](AdRuleEvaluationGroupsInner.md) | Each group&#39;s totals, for a rule with groups. Null otherwise. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleEvaluation.new(
  evaluated_at: null,
  today: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  hourly_through: null,
  matched: null,
  objects: null,
  groups: null
)
```

