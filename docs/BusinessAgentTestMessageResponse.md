# Zernio::BusinessAgentTestMessageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **agent_response** | **String** |  |  |
| **conversation_id** | **String** | Pass it back as conversationId to continue the thread. |  |
| **timestamp** | **Integer** | Unix seconds. | [optional] |
| **handoff_reason** | **String** |  | [optional] |
| **no_response_reason** | **String** |  | [optional] |
| **quick_replies** | **Array&lt;String&gt;** |  | [optional] |
| **product_variant_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentTestMessageResponse.new(
  message_id: null,
  agent_response: null,
  conversation_id: null,
  timestamp: null,
  handoff_reason: null,
  no_response_reason: null,
  quick_replies: null,
  product_variant_ids: null
)
```

