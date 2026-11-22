# Zernio::AutomationBacktestDay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  |  |
| **checks** | **Integer** | Checks the schedule would have run that day. 0 on a day it skips. |  |
| **evaluated** | **Integer** | The most objects any of the day&#39;s checks judged. |  |
| **matched** | **Integer** | The most objects any of the day&#39;s checks matched. |  |
| **held_back** | **Integer** | Matches left alone all day by the cooldown or a cap. |  |
| **actions** | [**Array&lt;AutomationBacktestDayActionsInner&gt;**](AutomationBacktestDayActionsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationBacktestDay.new(
  date: null,
  checks: null,
  evaluated: null,
  matched: null,
  held_back: null,
  actions: null
)
```

