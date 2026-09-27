# Zernio::GoogleRecommendation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_name** | **String** | customers/{customerId}/recommendations/{id}. Pass it to apply or dismiss. |  |
| **id** | **String** |  |  |
| **type** | **String** | Google RecommendationType, such as CAMPAIGN_BUDGET, KEYWORD or SET_TARGET_CPA. |  |
| **dismissed** | **Boolean** |  |  |
| **campaign_id** | **String** |  |  |
| **campaign_ids** | **Array&lt;String&gt;** | Every campaign the recommendation targets (several for account-level types). |  |
| **ad_group_id** | **String** |  |  |
| **campaign_budget_id** | **String** |  |  |
| **impact** | [**GoogleRecommendationImpact**](GoogleRecommendationImpact.md) |  |  |
| **details** | **Object** | The type-specific recommendation payload exactly as Google returns it (camelCase, amounts in micros), for example recommendedTargetCpaMicros or budgetOptions. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleRecommendation.new(
  resource_name: null,
  id: null,
  type: null,
  dismissed: null,
  campaign_id: null,
  campaign_ids: null,
  ad_group_id: null,
  campaign_budget_id: null,
  impact: null,
  details: null
)
```

