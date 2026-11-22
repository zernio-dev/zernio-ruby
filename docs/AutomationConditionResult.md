# Zernio::AutomationConditionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **window** | **String** |  | [optional] |
| **op** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **compare_to** | **String** |  | [optional] |
| **actual** | **Float** | Null when the value is unknown; such a condition never holds. | [optional] |
| **met** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationConditionResult.new(
  path: conditions.all[0],
  metric: null,
  window: null,
  op: null,
  value: null,
  compare_to: null,
  actual: null,
  met: null
)
```

