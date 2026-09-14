# Zernio::GetCampaignAdSchedule200ResponsePerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **window_days** | **Integer** | The trailing window used, or null when an explicit fromDate/toDate range was given. | [optional] |
| **by_day_of_week** | [**Array&lt;GetCampaignAdSchedule200ResponsePerformanceByDayOfWeekInner&gt;**](GetCampaignAdSchedule200ResponsePerformanceByDayOfWeekInner.md) | One entry per day that delivered, Monday first. | [optional] |
| **by_hour** | [**Array&lt;GetCampaignAdSchedule200ResponsePerformanceByHourInner&gt;**](GetCampaignAdSchedule200ResponsePerformanceByHourInner.md) | One entry per hour that delivered, 0-23 in the account time zone. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignAdSchedule200ResponsePerformance.new(
  window_days: null,
  by_day_of_week: null,
  by_hour: null
)
```

