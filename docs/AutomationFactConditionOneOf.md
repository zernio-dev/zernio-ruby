# Zernio::AutomationFactConditionOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | A fact name from the catalog. |  |
| **op** | **String** |  |  |
| **value** | [**AutomationFactConditionOneOfValue**](AutomationFactConditionOneOfValue.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationFactConditionOneOf.new(
  field: platform,
  op: null,
  value: null
)
```

