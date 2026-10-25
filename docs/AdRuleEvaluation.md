# Zernio::AdRuleEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluated_at** | **Time** |  |  |
| **today** | **Date** | The ad account&#39;s calendar date the windows were resolved against. |  |
| **timezone** | **String** | IANA timezone of the ad account. |  |
| **timezone_assumed** | **Boolean** | True when the ad account has no known timezone and UTC was assumed. |  |
| **currency** | **String** |  |  |
| **matched** | **Integer** | How many objects meet every condition. |  |
| **objects** | [**Array&lt;AdRuleObjectEvaluation&gt;**](AdRuleObjectEvaluation.md) | Every delivering campaign or ad set in scope (for an &#x60;activate&#x60; rule, the rule-paused ones it may reactivate). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleEvaluation.new(
  evaluated_at: null,
  today: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  matched: null,
  objects: null
)
```

