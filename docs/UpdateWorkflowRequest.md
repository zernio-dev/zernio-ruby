# Zernio::UpdateWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  | [optional] |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  | [optional] |
| **entry_node_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWorkflowRequest.new(
  name: null,
  description: null,
  nodes: null,
  edges: null,
  entry_node_id: null
)
```

