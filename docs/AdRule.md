# Zernio::AdRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **account_id** | **String** | The ads connection the rule acts through. |  |
| **platform** | **String** | Ad platform, for example &#x60;facebook&#x60; (Meta) or &#x60;google&#x60;. |  |
| **ad_account_id** | **String** | Platform ad account ID. |  |
| **level** | [**AdRuleLevel**](AdRuleLevel.md) |  |  |
| **campaign_ids** | **Array&lt;String&gt;** | Platform campaign IDs the rule is limited to. Null checks the whole ad account. |  |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  |  |
| **actions** | [**Array&lt;AdRuleAction&gt;**](AdRuleAction.md) | Each type at most once, and at most one of &#x60;pause&#x60;, &#x60;activate&#x60; and &#x60;adjust_budget&#x60;. |  |
| **schedule** | [**AdRuleSchedule**](AdRuleSchedule.md) |  |  |
| **cooldown_minutes** | **Integer** |  |  |
| **enabled** | **Boolean** |  |  |
| **last_run_at** | **Time** |  |  |
| **next_run_at** | **Time** | Null while the rule is disabled. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRule.new(
  id: null,
  name: null,
  account_id: null,
  platform: null,
  ad_account_id: null,
  level: null,
  campaign_ids: null,
  conditions: null,
  actions: null,
  schedule: null,
  cooldown_minutes: null,
  enabled: null,
  last_run_at: null,
  next_run_at: null,
  created_at: null,
  updated_at: null
)
```

