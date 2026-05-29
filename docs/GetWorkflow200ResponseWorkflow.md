# Zernio::GetWorkflow200ResponseWorkflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **entry_node_id** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  | [optional] |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  | [optional] |
| **total_started** | **Integer** |  | [optional] |
| **total_completed** | **Integer** |  | [optional] |
| **total_exited** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWorkflow200ResponseWorkflow.new(
  id: null,
  name: null,
  description: null,
  platform: null,
  account_id: null,
  profile_id: null,
  status: null,
  entry_node_id: null,
  nodes: null,
  edges: null,
  total_started: null,
  total_completed: null,
  total_exited: null,
  created_at: null,
  updated_at: null
)
```

