# Zernio::TriggerWorkflow200ResponseExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **current_node_id** | **String** |  | [optional] |
| **waiting_for** | **Object** |  | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TriggerWorkflow200ResponseExecution.new(
  id: null,
  status: null,
  current_node_id: null,
  waiting_for: null,
  variables: null,
  conversation_id: null
)
```

