# Zernio::UpdateCampaignAdScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule** | [**Array&lt;UpdateCampaignAdScheduleRequestScheduleInner&gt;**](UpdateCampaignAdScheduleRequestScheduleInner.md) | The complete set of windows. Required, so clearing the schedule is always deliberate rather than an omission. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignAdScheduleRequest.new(
  schedule: null
)
```

