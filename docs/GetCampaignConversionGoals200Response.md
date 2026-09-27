# Zernio::GetCampaignConversionGoals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  | [optional] |
| **goal_config_level** | **String** |  | [optional] |
| **custom_conversion_goal_id** | **String** |  | [optional] |
| **goals** | [**Array&lt;GoogleCampaignConversionGoalsGoalsInner&gt;**](GoogleCampaignConversionGoalsGoalsInner.md) |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **cached_at** | **Time** |  | [optional] |
| **stale** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignConversionGoals200Response.new(
  campaign_id: null,
  goal_config_level: null,
  custom_conversion_goal_id: null,
  goals: null,
  customer_id: null,
  cached_at: null,
  stale: null
)
```

