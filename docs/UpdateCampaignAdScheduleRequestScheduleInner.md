# Zernio::UpdateCampaignAdScheduleRequestScheduleInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day_of_week** | **String** |  |  |
| **start_hour** | **Integer** |  |  |
| **start_minute** | **Integer** | Quarter-hours only. | [optional][default to START_MINUTE::N0] |
| **end_hour** | **Integer** | 24 means midnight at the end of the day. |  |
| **end_minute** | **Integer** | Quarter-hours only. Must be 0 when endHour is 24. | [optional][default to END_MINUTE::N0] |
| **bid_modifier** | **Float** | Bid adjustment for this window. Null runs it at the campaign bid. | [optional][default to null] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignAdScheduleRequestScheduleInner.new(
  day_of_week: null,
  start_hour: null,
  start_minute: null,
  end_hour: null,
  end_minute: null,
  bid_modifier: null
)
```

