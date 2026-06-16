# Zernio::TriggerWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | Recipient phone (WhatsApp only) | [optional] |
| **conversation_id** | **String** | An existing conversation to run in (required for non-WhatsApp workflows) | [optional] |
| **text** | **String** | Simulated inbound text, seeded as the run&#39;s lastMessage variable | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TriggerWorkflowRequest.new(
  to: null,
  conversation_id: null,
  text: null
)
```

