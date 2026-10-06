# Zernio::WebhookPayloadWorkflowRunExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workflow run (execution) id. | [optional] |
| **status** | **String** | running on workflow.run.started; completed or exited (ended on purpose before the last node, e.g. a handoff) on workflow.run.completed; failed on workflow.run.failed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWorkflowRunExecution.new(
  id: null,
  status: null
)
```

