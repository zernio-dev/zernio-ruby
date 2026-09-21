# Zernio::ListAdSets200ResponseAdSetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **platform_ad_set_status** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **budget** | [**ListAdSets200ResponseAdSetsInnerBudget**](ListAdSets200ResponseAdSetsInnerBudget.md) |  | [optional] |
| **schedule** | [**ListAdSets200ResponseAdSetsInnerSchedule**](ListAdSets200ResponseAdSetsInnerSchedule.md) |  | [optional] |
| **targeting** | [**ListAdSets200ResponseAdSetsInnerTargeting**](ListAdSets200ResponseAdSetsInnerTargeting.md) |  | [optional] |
| **is_external** | **Boolean** |  | [optional] |
| **platform_created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdSets200ResponseAdSetsInner.new(
  platform_ad_set_id: null,
  platform: null,
  ad_set_name: null,
  status: null,
  platform_ad_set_status: null,
  platform_campaign_id: null,
  platform_ad_account_id: null,
  account_id: null,
  profile_id: null,
  currency: null,
  budget: null,
  schedule: null,
  targeting: null,
  is_external: null,
  platform_created_at: null
)
```

