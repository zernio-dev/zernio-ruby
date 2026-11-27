# Zernio::UpdateCampaignConversionGoalsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **goals** | [**Array&lt;GoogleBiddableGoalInput&gt;**](GoogleBiddableGoalInput.md) |  | [optional] |
| **goal_config_level** | **String** |  | [optional] |
| **custom_conversion_goal_id** | **String** | Custom goal to bid on, or null to clear | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignConversionGoalsRequest.new(
  stage: null,
  goals: null,
  goal_config_level: null,
  custom_conversion_goal_id: null
)
```

