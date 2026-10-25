# Zernio::CreateAdRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **account_id** | **String** | The ads connection (account ID from &#x60;GET /v1/accounts&#x60;). |  |
| **ad_account_id** | **String** | Platform ad account ID, from &#x60;GET /v1/ads/accounts&#x60;. |  |
| **level** | [**AdRuleLevel**](AdRuleLevel.md) |  |  |
| **campaign_ids** | **Array&lt;String&gt;** | Only check these platform campaign IDs (or their ad sets). Leave out to check the whole ad account. | [optional] |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  |  |
| **actions** | [**Array&lt;AdRuleAction&gt;**](AdRuleAction.md) | Each type at most once, and at most one of &#x60;pause&#x60;, &#x60;activate&#x60; and &#x60;adjust_budget&#x60;. |  |
| **schedule** | [**AdRuleSchedule**](AdRuleSchedule.md) | Leave it out to run every 60 minutes. | [optional] |
| **cooldown_minutes** | **Integer** | How long the rule leaves an object alone after acting on it. | [optional][default to 1440] |
| **enabled** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdRuleRequest.new(
  name: null,
  account_id: null,
  ad_account_id: null,
  level: null,
  campaign_ids: null,
  conditions: null,
  actions: null,
  schedule: null,
  cooldown_minutes: null,
  enabled: null
)
```

