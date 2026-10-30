# Zernio::AdRuleObjectEvaluationConditionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric** | **String** |  |  |
| **window** | **String** | Days in the ad account&#39;s own timezone. &#x60;last_7d&#x60; is the 7 full days before today; only &#x60;today&#x60; reads the day in progress. |  |
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

