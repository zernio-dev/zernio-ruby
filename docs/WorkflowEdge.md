# Zernio::WorkflowEdge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **source** | **String** | Source node id |  |
| **target** | **String** | Target node id |  |
| **source_handle** | **String** | Selects a branch output of a multi-output node: a condition rule id or &#39;default&#39;; &#39;reply&#39; or &#39;timeout&#39; for wait_for_reply; &#39;success&#39; or &#39;error&#39; for webhook. Null &#x3D; the node&#39;s single/default output.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WorkflowEdge.new(
  id: null,
  source: null,
  target: null,
  source_handle: null
)
```

