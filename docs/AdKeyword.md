# Zernio::AdKeyword

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio keyword ID. Accepted as &#x60;keywordId&#x60; by PATCH/DELETE /v1/ads/keywords/{keywordId}. | [optional] |
| **platform_criterion_id** | **String** | Google ad_group_criterion.criterion_id. Unique only within its ad group (&#x60;adSetId&#x60;), not across the account. | [optional] |
| **resource_name** | **String** | Google resource name, customers/{adAccountId}/adGroupCriteria/{adSetId}~{platformCriterionId}. | [optional] |
| **account_id** | **String** | Account ID owning the sync | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **ad_account_id** | **String** | Google customer ID | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **campaign_status** | **String** |  | [optional] |
| **ad_set_id** | **String** | Google ad group ID | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **ad_set_status** | **String** |  | [optional] |
| **keyword** | **String** |  | [optional] |
| **match_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **negative** | **Boolean** |  | [optional] |
| **quality_score** | **Integer** | Deprecated, use &#x60;quality.score&#x60;. Google Quality Score, 1-10. Null when unrated. | [optional] |
| **quality** | [**AdKeywordQuality**](AdKeywordQuality.md) |  | [optional] |
| **synced_at** | **Time** |  | [optional] |
| **metrics** | [**AdKeywordMetrics**](AdKeywordMetrics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdKeyword.new(
  id: null,
  platform_criterion_id: null,
  resource_name: null,
  account_id: null,
  profile_id: null,
  platform: null,
  ad_account_id: null,
  campaign_id: null,
  campaign_name: null,
  campaign_status: null,
  ad_set_id: null,
  ad_set_name: null,
  ad_set_status: null,
  keyword: null,
  match_type: null,
  status: null,
  negative: null,
  quality_score: null,
  quality: null,
  synced_at: null,
  metrics: null
)
```

