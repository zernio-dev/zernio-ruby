# Zernio::FlowAutomationDefinitionGraph

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_node_id** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  |  |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FlowAutomationDefinitionGraph.new(
  entry_node_id: null,
  nodes: null,
  edges: null
)
```

