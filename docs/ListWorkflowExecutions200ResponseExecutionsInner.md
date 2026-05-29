# Zernio::ListWorkflowExecutions200ResponseExecutionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **current_node_id** | **String** |  | [optional] |
| **waiting_for** | [**ListWorkflowExecutions200ResponseExecutionsInnerWaitingFor**](ListWorkflowExecutions200ResponseExecutionsInnerWaitingFor.md) |  | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **platform_identifier** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **step_count** | **Integer** |  | [optional] |
| **last_error** | **String** |  | [optional] |
| **resume_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowExecutions200ResponseExecutionsInner.new(
  id: null,
  status: null,
  current_node_id: null,
  waiting_for: null,
  variables: null,
  platform_identifier: null,
  conversation_id: null,
  step_count: null,
  last_error: null,
  resume_at: null,
  created_at: null,
  updated_at: null,
  completed_at: null
)
```

