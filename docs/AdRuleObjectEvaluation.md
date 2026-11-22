# Zernio::AdRuleObjectEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform ID of the campaign, ad set or ad. A keyword is &#x60;{adGroupId}~{criterionId}&#x60;, a search term &#x60;{campaignId}~{term}&#x60;. |  |
| **name** | **String** | The object&#39;s name: the keyword text or the search term. |  |
| **campaign_id** | **String** |  |  |
| **campaign_name** | **String** | Absent on runs recorded before November 2026. | [optional] |
| **matched** | **Boolean** | True when every condition holds. |  |
| **group** | **String** | For a rule with groups: the group this campaign was judged in. &#x60;matched&#x60; and &#x60;conditions&#x60; are the group&#39;s. | [optional] |
| **conditions** | [**Array&lt;AdRuleObjectEvaluationConditionsInner&gt;**](AdRuleObjectEvaluationConditionsInner.md) |  |  |
| **readings** | [**Array&lt;AdRuleObjectEvaluationReadingsInner&gt;**](AdRuleObjectEvaluationReadingsInner.md) | On a matched object: spend, impressions and clicks over each window its conditions read, and the other search impression shares when a condition reads one. Left out where a condition already reads the value. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleObjectEvaluation.new(
  id: null,
  name: null,
  campaign_id: null,
  campaign_name: null,
  matched: null,
  group: null,
  conditions: null,
  readings: null
)
```

