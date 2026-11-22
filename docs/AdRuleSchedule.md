# Zernio::AdRuleSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **every_minutes** | **Integer** | How often the rule runs, in minutes. Null on a rule that runs at set times. | [optional] |
| **times** | [**Array&lt;AdRuleScheduleTimesInner&gt;**](AdRuleScheduleTimesInner.md) | Set weekly times in the ad account timezone, instead of an interval. A rule that changes ads needs a cooldown of at least the shortest gap between two times. | [optional] |
| **starts_at** | **Time** | The rule runs from this time on. | [optional] |
| **ends_at** | **Time** | The rule stops running after this time. | [optional] |
| **quiet_hours** | [**AdRuleScheduleQuietHours**](AdRuleScheduleQuietHours.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleSchedule.new(
  every_minutes: null,
  times: null,
  starts_at: null,
  ends_at: null,
  quiet_hours: null
)
```

