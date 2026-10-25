# Zernio::UpdateAdRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **level** | [**AdRuleLevel**](AdRuleLevel.md) |  | [optional] |
| **campaign_ids** | **Array&lt;String&gt;** |  | [optional] |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  | [optional] |
| **actions** | [**Array&lt;AdRuleAction&gt;**](AdRuleAction.md) | Each type at most once, and at most one of &#x60;pause&#x60;, &#x60;activate&#x60; and &#x60;adjust_budget&#x60;. | [optional] |
| **schedule** | [**AdRuleSchedule**](AdRuleSchedule.md) |  | [optional] |
| **cooldown_minutes** | **Integer** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRuleRequest.new(
  name: null,
  level: null,
  campaign_ids: null,
  conditions: null,
  actions: null,
  schedule: null,
  cooldown_minutes: null,
  enabled: null
)
```

