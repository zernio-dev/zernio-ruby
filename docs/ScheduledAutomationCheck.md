# Zernio::ScheduledAutomationCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **checked_at** | **Time** |  |  |
| **outcome** | **String** | &#x60;paused&#x60;: the team used its free automation runs with no payment method on file, so the check did not run. &#x60;error&#x60; says why. |  |
| **evaluated** | **Integer** | Posts judged. |  |
| **analytics_synced_at** | **Time** | The oldest analytics sync among the posts judged: their numbers are as of then. |  |
| **matched** | [**Array&lt;ScheduledAutomationCheckMatchedInner&gt;**](ScheduledAutomationCheckMatchedInner.md) | Up to 20 matching posts. |  |
| **actions** | [**Array&lt;ScheduledAutomationCheckActionsInner&gt;**](ScheduledAutomationCheckActionsInner.md) |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ScheduledAutomationCheck.new(
  id: null,
  automation_id: null,
  checked_at: null,
  outcome: null,
  evaluated: null,
  analytics_synced_at: null,
  matched: null,
  actions: null,
  error: null
)
```

