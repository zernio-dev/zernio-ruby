# Zernio::AdRuleActivityEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable ID of this entry. |  |
| **ran_at** | **Time** |  |  |
| **rule_id** | **String** |  |  |
| **rule_name** | **String** | The rule&#39;s name when it acted. |  |
| **platform** | **String** |  |  |
| **account_id** | **String** | The ads connection the rule runs on. |  |
| **ad_account_id** | **String** |  |  |
| **level** | **String** |  |  |
| **object_id** | **String** | Platform ID of the campaign or ad set. |  |
| **object_name** | **String** | Its name when the rule acted. |  |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | Why it was skipped or failed, for example &#x60;already_paused&#x60;. |  |
| **previous_daily_budget** | **Float** |  |  |
| **new_daily_budget** | **Float** |  |  |
| **currency** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActivityEntry.new(
  id: null,
  ran_at: null,
  rule_id: null,
  rule_name: null,
  platform: null,
  account_id: null,
  ad_account_id: null,
  level: null,
  object_id: null,
  object_name: null,
  type: null,
  status: null,
  reason: null,
  previous_daily_budget: null,
  new_daily_budget: null,
  currency: null
)
```

