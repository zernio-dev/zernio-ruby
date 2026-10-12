# Zernio::SupportRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | Run id, a 24-character hex string. |  |
| **thread_id** | **String** | Conversation thread id. Send it back as &#x60;threadId&#x60; to ask a follow-up in the same thread. |  |
| **status** | **String** | queued and running are in progress. needs_human means Ana handed the question to a person instead of answering; when &#x60;supportTicket&#x60; is set, a Zernio teammate has been notified and will follow up by email. |  |
| **stop_reason** | **String** | Why the run stopped. Null while it is in progress. |  |
| **answer** | **String** | Ana&#39;s answer. Null while the run is in progress or when it failed. |  |
| **usage** | [**SupportRunUsage**](SupportRunUsage.md) |  |  |
| **cost_usd** | **Float** | The exact amount charged for the question, in USD, never above &#x60;maxCostUsd&#x60;. 0 for a failed run. |  |
| **max_cost_usd** | **Float** | The cost cap this run was started with, in USD. |  |
| **created_at** | **Time** |  |  |
| **started_at** | **Time** |  |  |
| **finished_at** | **Time** |  |  |
| **support_ticket** | [**SupportRunSupportTicket**](SupportRunSupportTicket.md) |  |  |
| **poll_after_seconds** | **Integer** | Seconds to wait before polling again. Present only while the run is queued or running. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SupportRun.new(
  run_id: null,
  thread_id: null,
  status: null,
  stop_reason: null,
  answer: null,
  usage: null,
  cost_usd: null,
  max_cost_usd: null,
  created_at: null,
  started_at: null,
  finished_at: null,
  support_ticket: null,
  poll_after_seconds: null
)
```

