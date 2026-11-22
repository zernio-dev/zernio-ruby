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
| **object_id** | **String** | Platform ID of the campaign, ad set or ad. A keyword is &#x60;{adGroupId}~{criterionId}&#x60;. |  |
| **object_name** | **String** | Its name when the rule acted. |  |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | Why it was skipped or failed, for example &#x60;already_paused&#x60;. |  |
| **previous_daily_budget** | **Float** |  |  |
| **new_daily_budget** | **Float** |  |  |
| **previous_name** | **String** | The name before an &#x60;edit_name&#x60;. |  |
| **new_name** | **String** | The name an applied &#x60;edit_name&#x60; set. |  |
| **previous_bid_amount** | **Float** | The bid cap or cost cap before an &#x60;adjust_bid&#x60;. |  |
| **new_bid_amount** | **Float** | The cap an applied &#x60;adjust_bid&#x60; set. |  |
| **target_metric** | **String** | Which target an &#x60;adjust_target&#x60; moved. |  |
| **previous_target** | **Float** | The target CPA or target ROAS before an &#x60;adjust_target&#x60;. |  |
| **new_target** | **Float** | The target an applied &#x60;adjust_target&#x60; set. |  |
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
  previous_name: null,
  new_name: null,
  previous_bid_amount: null,
  new_bid_amount: null,
  target_metric: null,
  previous_target: null,
  new_target: null,
  currency: null
)
```

