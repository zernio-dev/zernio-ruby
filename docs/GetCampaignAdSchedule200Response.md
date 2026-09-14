# Zernio::GetCampaignAdSchedule200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  | [optional] |
| **schedule** | [**Array&lt;AdScheduleWindow&gt;**](AdScheduleWindow.md) |  | [optional] |
| **serves_around_the_clock** | **Boolean** | True when the campaign carries no ad schedule at all, so it can serve at any time. | [optional] |
| **cached_at** | **Time** |  | [optional] |
| **stale** | **Boolean** | True when a quota-exhausted read served the last-good copy. | [optional] |
| **performance** | [**GetCampaignAdSchedule200ResponsePerformance**](GetCampaignAdSchedule200ResponsePerformance.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignAdSchedule200Response.new(
  campaign_id: null,
  schedule: null,
  serves_around_the_clock: null,
  cached_at: null,
  stale: null,
  performance: null
)
```

