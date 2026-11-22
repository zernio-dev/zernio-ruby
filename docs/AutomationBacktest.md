# Zernio::AutomationBacktest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | The first day replayed, in the ad account timezone. |  |
| **to** | **Date** | The last day replayed, yesterday in the ad account timezone. |  |
| **timezone** | **String** |  |  |
| **timezone_assumed** | **Boolean** | True when the ad account timezone is unknown and UTC was used. |  |
| **currency** | **String** |  |  |
| **totals** | [**AutomationBacktestTotals**](AutomationBacktestTotals.md) |  |  |
| **days** | [**Array&lt;AutomationBacktestDay&gt;**](AutomationBacktestDay.md) |  |  |
| **notes** | [**Array&lt;AutomationBacktestNotesInner&gt;**](AutomationBacktestNotesInner.md) | What this replay could not know, for example that budgets have no history. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationBacktest.new(
  from: null,
  to: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  totals: null,
  days: null,
  notes: null
)
```

