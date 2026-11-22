# Zernio::AdRuleLifecycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_checks** | **Integer** | Matching runs in a row before acting. Defaults to 1. | [optional] |
| **hold** | [**AdRuleConditions**](AdRuleConditions.md) | Keeps an open alert open after the conditions stop matching. | [optional] |
| **critical** | [**AdRuleConditions**](AdRuleConditions.md) | Marks an open alert critical. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleLifecycle.new(
  confirm_checks: null,
  hold: null,
  critical: null
)
```

