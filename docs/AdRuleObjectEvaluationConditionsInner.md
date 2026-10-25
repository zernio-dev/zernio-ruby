# Zernio::AdRuleObjectEvaluationConditionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric** | **String** | &#x60;ctr&#x60; is a percentage. &#x60;spend&#x60;, &#x60;cpc&#x60;, &#x60;cpm&#x60; and &#x60;cpa&#x60; are in the ad account currency. |  |
| **window** | **String** | Days in the ad account&#39;s own timezone. &#x60;last_7d&#x60; includes today. |  |
| **op** | **String** |  |  |
| **value** | **Float** |  |  |
| **actual** | **Float** | The object&#39;s value over the window. Null when it cannot be computed. |  |
| **met** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleObjectEvaluationConditionsInner.new(
  metric: null,
  window: null,
  op: null,
  value: null,
  actual: null,
  met: null
)
```

