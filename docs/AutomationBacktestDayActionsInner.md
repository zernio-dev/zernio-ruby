# Zernio::AutomationBacktestDayActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | [**AutomationBacktestDayActionsInnerSubject**](AutomationBacktestDayActionsInnerSubject.md) |  |  |
| **group** | **String** | For an automation with groups, the group the campaign was judged in. | [optional] |
| **type** | **String** |  |  |
| **budget** | [**AutomationBacktestDayActionsInnerBudget**](AutomationBacktestDayActionsInnerBudget.md) |  | [optional] |
| **skipped** | **String** | Why it would have been skipped. Absent when it would have acted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationBacktestDayActionsInner.new(
  subject: null,
  group: null,
  type: null,
  budget: null,
  skipped: null
)
```

