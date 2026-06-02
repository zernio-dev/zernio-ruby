# Zernio::GetWorkflowVersion200ResponseVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_node_id** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  | [optional] |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_by_email** | **String** |  | [optional] |
| **restored_from_version** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWorkflowVersion200ResponseVersion.new(
  version: null,
  name: null,
  description: null,
  entry_node_id: null,
  nodes: null,
  edges: null,
  platform: null,
  account_id: null,
  profile_id: null,
  created_by: null,
  created_by_email: null,
  restored_from_version: null,
  created_at: null
)
```

