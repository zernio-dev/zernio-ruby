# Zernio::WebhookPayloadWorkflowRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Event id, the dedupe key. |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Present on every event tied to a profile and absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once. Use it to route the event to your tenant without storing Zernio profile ids. | [optional] |
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
  test: null,
  id: null,
  profiles: null,
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

