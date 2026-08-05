# Zernio::ValueRuleSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform value rule set id. |  |
| **name** | **String** |  |  |
| **rules** | [**Array&lt;ValueRule&gt;**](ValueRule.md) | Evaluated in order; the first matching rule wins. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValueRuleSet.new(
  id: null,
  name: null,
  rules: null
)
```

