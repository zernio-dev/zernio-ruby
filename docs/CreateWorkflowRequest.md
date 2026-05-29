# Zernio::CreateWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  | [optional][default to &#39;whatsapp&#39;] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  | [optional] |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  | [optional] |
| **entry_node_id** | **String** | The trigger node id; derived from the single trigger node if omitted | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWorkflowRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  name: null,
  description: null,
  nodes: null,
  edges: null,
  entry_node_id: null
)
```

