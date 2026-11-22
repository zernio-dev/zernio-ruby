# Zernio::AutomationBacktestTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | **Integer** | Actions it would have taken. Skipped ones are not counted. |  |
| **pauses** | **Integer** |  |  |
| **activations** | **Integer** |  |  |
| **budget_raised** | **Integer** | Budget changes that raised a budget. |  |
| **budget_lowered** | **Integer** | Budget changes that lowered a budget. |  |
| **budget_change** | **Float** | The net budget change across every budget action, in &#x60;currency&#x60;. |  |
| **notifications** | **Integer** |  |  |
| **skipped** | **Integer** | Actions planned but skipped. |  |
| **subjects** | **Integer** | Distinct objects it would have acted on. |  |
| **held_back** | **Integer** | Matches left alone by the cooldown or a cap, summed over the days. |  |
| **days_with_actions** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationBacktestTotals.new(
  actions: null,
  pauses: null,
  activations: null,
  budget_raised: null,
  budget_lowered: null,
  budget_change: null,
  notifications: null,
  skipped: null,
  subjects: null,
  held_back: null,
  days_with_actions: null
)
```

