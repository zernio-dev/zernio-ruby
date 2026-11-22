# Zernio::AutomationAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_checks** | **Integer** |  | [optional] |
| **hold** | [**AdRuleConditions**](AdRuleConditions.md) |  | [optional] |
| **critical** | [**AdRuleConditions**](AdRuleConditions.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationAlert.new(
  confirm_checks: null,
  hold: null,
  critical: null
)
```

