# Zernio::AutomationRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **kind** | **String** |  |  |
| **status** | **String** | &#x60;live&#x60; while it runs or waits (a comment to DM run waiting for its follow gate is live). |  |
| **subject** | [**AutomationRunSubject**](AutomationRunSubject.md) |  |  |
| **started_at** | **Time** |  |  |
| **ended_at** | **Time** |  |  |
| **exit_reason** | **String** | Why an exited or failed run stopped, for example &#x60;replied&#x60;, &#x60;unsubscribed&#x60; or &#x60;skipped&#x60;. |  |
| **error** | **String** |  |  |
| **steps** | [**AutomationRunSteps**](AutomationRunSteps.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRun.new(
  id: null,
  automation_id: null,
  kind: null,
  status: null,
  subject: null,
  started_at: null,
  ended_at: null,
  exit_reason: null,
  error: null,
  steps: null
)
```

