# Zernio::WorkflowExecutionEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **node_id** | **String** | Present on &#x60;node_*&#x60; events | [optional] |
| **node_type** | **String** | Present on &#x60;node_*&#x60; events | [optional] |
| **source_handle** | **String** | The edge handle the executor followed out of this node (see &#x60;WorkflowEdge.sourceHandle&#x60;) | [optional] |
| **duration_ms** | **Integer** | Node run time; present on &#x60;node_completed&#x60; and &#x60;node_failed&#x60; | [optional] |
| **error_message** | **String** | Failure detail; present on &#x60;node_failed&#x60; and &#x60;execution_exited&#x60; | [optional] |
| **meta** | **Hash&lt;String, Object&gt;** | Per-node-type payload. Shape varies — see WorkflowNode &#x60;type&#x60;. Examples:   &#x60;send_message&#x60; → &#x60;{ messageType, text, recipient }&#x60;,   &#x60;webhook&#x60; → &#x60;{ url, method, statusCode, responseTimeMs, responsePreview }&#x60;,   &#x60;ai&#x60; → &#x60;{ model, provider, inputTokens, outputTokens, responsePreview }&#x60;,   &#x60;condition&#x60; → &#x60;{ matchedHandle, rulesEvaluated }&#x60;,   &#x60;a_b_split&#x60; → &#x60;{ percentage, chosen }&#x60;.  | [optional] |
| **at** | **Time** | Event timestamp (UTC) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WorkflowExecutionEvent.new(
  action: null,
  status: null,
  node_id: null,
  node_type: null,
  source_handle: null,
  duration_ms: null,
  error_message: null,
  meta: null,
  at: null
)
```

