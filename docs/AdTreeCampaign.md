# Late::AdTreeCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **status** | **String** | Derived from child ad statuses | [optional] |
| **ad_count** | **Integer** | Total ads across all ad sets | [optional] |
| **ad_set_count** | **Integer** |  | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **ad_sets** | [**Array&lt;AdTreeAdSet&gt;**](AdTreeAdSet.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AdTreeCampaign.new(
  platform_campaign_id: null,
  platform: null,
  campaign_name: null,
  status: null,
  ad_count: null,
  ad_set_count: null,
  budget: null,
  metrics: null,
  platform_ad_account_id: null,
  account_id: null,
  profile_id: null,
  ad_sets: null
)
```

