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
| **filters** | [**Array&lt;AdRuleFiltersInner&gt;**](AdRuleFiltersInner.md) | Narrows the objects the rule checks. Every filter must hold. A campaign rule reads &#x60;name&#x60;, &#x60;campaign_id&#x60;, &#x60;goal&#x60;, &#x60;days_live&#x60;, &#x60;days_since_change&#x60;, &#x60;budget_level&#x60; and &#x60;channel_type&#x60;; an ad set rule all but &#x60;days_since_change&#x60;, plus &#x60;campaign_name&#x60; and &#x60;adset_id&#x60;; an ad rule also &#x60;adset_name&#x60; and &#x60;ad_id&#x60;.  A keyword rule reads &#x60;name&#x60; (the keyword text), &#x60;campaign_name&#x60;, &#x60;adset_name&#x60;, &#x60;campaign_id&#x60;, &#x60;adset_id&#x60;, &#x60;match_type&#x60; and &#x60;blocked_by_negative&#x60;. A search term rule reads those (&#x60;name&#x60; is the term) plus &#x60;search_term_status&#x60;.  |  |
| **groups** | [**Array&lt;AdRuleGroupsInner&gt;**](AdRuleGroupsInner.md) | Campaigns judged together, campaign rules only. Each group&#39;s numbers and your results are added up across its campaigns, and rates and formulas are computed on the totals: a group&#39;s &#x60;result:cac_percent&#x60; is its total spend over its total revenue.  The conditions are judged once per group, and a matching group acts on each of its campaigns, each with its own cooldown and daily cap. Paused campaigns count toward a group&#39;s totals; only the ones the rule may act on are changed.  A group with no filters holds every campaign the rule checks: the whole ad account. A campaign in several groups is acted on once per run, by the first matching group.  Reach, frequency and the Google impression shares cannot be added up across campaigns, so a rule with groups cannot use them. It cannot use hourly windows either.  A campaign with no results sent for the window adds its spend and no results to its group. A result sent as a rate (kind &#x60;percent&#x60; or &#x60;ratio&#x60;, no formula) reads as unknown for a group; define it as a formula over counts.  |  |
| **lifecycle** | [**AdRuleLifecycle**](AdRuleLifecycle.md) |  |  |
| **conditions** | [**AdRuleConditions**](AdRuleConditions.md) |  |  |
| **actions** | [**Array&lt;AdRuleAction&gt;**](AdRuleAction.md) | Each type at most once, and at most one of &#x60;pause&#x60;, &#x60;activate&#x60;, &#x60;adjust_budget&#x60;, &#x60;adjust_bid&#x60;, &#x60;adjust_target&#x60;, &#x60;reallocate_budget&#x60;, &#x60;duplicate&#x60; and &#x60;edit_name&#x60;. |  |
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
  filters: null,
  groups: [{name&#x3D;MBA, filters&#x3D;[{field&#x3D;name, op&#x3D;contains, value&#x3D;MBA}]}, {name&#x3D;Account total, filters&#x3D;[]}],
  lifecycle: null,
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

