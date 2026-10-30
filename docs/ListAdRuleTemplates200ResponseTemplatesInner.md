# Zernio::ListAdRuleTemplates200ResponseTemplatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **level** | [**AdRuleLevel**](AdRuleLevel.md) |  |  |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  |  |
| **actions** | [**Array&lt;AdRuleAction&gt;**](AdRuleAction.md) | Each type at most once, and at most one of &#x60;pause&#x60;, &#x60;activate&#x60; and &#x60;adjust_budget&#x60;. |  |
| **schedule** | [**AdRuleSchedule**](AdRuleSchedule.md) |  |  |
| **cooldown_minutes** | **Integer** |  |  |
| **platforms** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdRuleTemplates200ResponseTemplatesInner.new(
  id: stop_losers,
  name: null,
  description: null,
  level: null,
  conditions: null,
  actions: null,
  schedule: null,
  cooldown_minutes: null,
  platforms: null
)
```

