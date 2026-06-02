# Zernio::UpdateWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **nodes** | [**Array&lt;WorkflowNode&gt;**](WorkflowNode.md) |  | [optional] |
| **edges** | [**Array&lt;WorkflowEdge&gt;**](WorkflowEdge.md) |  | [optional] |
| **entry_node_id** | **String** |  | [optional] |
| **account_id** | **String** | Reassign the workflow to a different &#x60;SocialAccount&#x60;. &#x60;platform&#x60; and &#x60;profileId&#x60; are derived server-side from the new account (the client never sends them directly). The account must belong to the caller&#39;s workspace and be on a workflow-supported platform (whatsapp, instagram, facebook, telegram, twitter, bluesky, reddit). Changing this triggers a graph revalidation against the new platform.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWorkflowRequest.new(
  name: null,
  description: null,
  nodes: null,
  edges: null,
  entry_node_id: null,
  account_id: null
)
```

