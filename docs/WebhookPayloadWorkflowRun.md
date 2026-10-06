# Zernio::WebhookPayloadWorkflowRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event id, the dedupe key. |  |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **workflow** | [**WebhookPayloadWorkflowRunWorkflow**](WebhookPayloadWorkflowRunWorkflow.md) |  |  |
| **execution** | [**WebhookPayloadWorkflowRunExecution**](WebhookPayloadWorkflowRunExecution.md) |  |  |
| **conversation** | [**WebhookPayloadWorkflowRunConversation**](WebhookPayloadWorkflowRunConversation.md) |  |  |
| **contact** | [**WebhookPayloadContactTagContact**](WebhookPayloadContactTagContact.md) |  |  |
| **trigger** | [**WebhookPayloadWorkflowRunTrigger**](WebhookPayloadWorkflowRunTrigger.md) |  |  |
| **error** | **String** | workflow.run.failed only: which node failed and why. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWorkflowRun.new(
  id: null,
  event: null,
  timestamp: null,
  workflow: null,
  execution: null,
  conversation: null,
  contact: null,
  trigger: null,
  error: null
)
```

