# Late::Ad

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **ad_type** | **String** |  | [optional] |
| **goal** | **String** |  | [optional] |
| **is_external** | **Boolean** | True for ads synced from platform ad managers | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **creative** | [**AdCreative**](AdCreative.md) |  | [optional] |
| **targeting** | **Object** |  | [optional] |
| **schedule** | [**AdSchedule**](AdSchedule.md) |  | [optional] |
| **rejection_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::Ad.new(
  _id: null,
  name: null,
  platform: null,
  status: null,
  ad_type: null,
  goal: null,
  is_external: null,
  budget: null,
  metrics: null,
  platform_ad_id: null,
  platform_ad_account_id: null,
  platform_campaign_id: null,
  platform_ad_set_id: null,
  campaign_name: null,
  ad_set_name: null,
  creative: null,
  targeting: null,
  schedule: null,
  rejection_reason: null,
  created_at: null,
  updated_at: null
)
```

