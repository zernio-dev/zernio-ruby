# Zernio::AdRuleObjectEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform ID of the campaign or ad set. |  |
| **name** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **matched** | **Boolean** | True when every condition holds. |  |
| **conditions** | [**Array&lt;AdRuleObjectEvaluationConditionsInner&gt;**](AdRuleObjectEvaluationConditionsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleObjectEvaluation.new(
  id: null,
  name: null,
  campaign_id: null,
  matched: null,
  conditions: null
)
```

