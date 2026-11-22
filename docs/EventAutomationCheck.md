# Zernio::EventAutomationCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **checked_at** | **Time** |  |  |
| **outcome** | **String** | &#x60;paused&#x60;: the team used its free automation runs with no payment method on file, so the check did not run. &#x60;error&#x60; says why. |  |
| **evaluated** | **Integer** |  |  |
| **event** | **String** |  |  |
| **event_id** | **String** |  |  |
| **subject** | [**EventAutomationCheckSubject**](EventAutomationCheckSubject.md) |  |  |
| **facts** | **Hash&lt;String, Object&gt;** | The event&#39;s facts as the trigger read them, keyed by fact name. Recorded only for an automation with no steps (one that only records each event).  Null for an automation with steps, whose filter results show the facts it compared, and on checks recorded before facts were kept. Content facts are null for a team that keeps no content. |  |
| **filter** | [**Array&lt;AutomationFactResult&gt;**](AutomationFactResult.md) |  |  |
| **actions** | [**Array&lt;AutomationRunResult&gt;**](AutomationRunResult.md) |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EventAutomationCheck.new(
  id: null,
  automation_id: null,
  checked_at: null,
  outcome: null,
  evaluated: null,
  event: post.failed,
  event_id: null,
  subject: null,
  facts: null,
  filter: null,
  actions: null,
  error: null
)
```

