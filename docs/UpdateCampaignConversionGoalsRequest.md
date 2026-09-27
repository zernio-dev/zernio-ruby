# Zernio::UpdateCampaignConversionGoalsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goals** | [**Array&lt;GoogleBiddableGoalInput&gt;**](GoogleBiddableGoalInput.md) |  | [optional] |
| **goal_config_level** | **String** |  | [optional] |
| **custom_conversion_goal_id** | **String** | Custom goal to bid on, or null to clear | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignConversionGoalsRequest.new(
  goals: null,
  goal_config_level: null,
  custom_conversion_goal_id: null
)
```

