# Zernio::AutomationGraph

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **triggers** | [**Array&lt;AutomationGraphTriggersInner&gt;**](AutomationGraphTriggersInner.md) | One trigger. Its &#x60;type&#x60; is the kind&#39;s &#x60;trigger.type&#x60;; &#x60;config&#x60; holds the rest of the trigger, and &#x60;subjects&#x60; for a schedule. |  |
| **nodes** | [**Array&lt;AutomationGraphNodesInner&gt;**](AutomationGraphNodesInner.md) |  |  |
| **edges** | [**Array&lt;AutomationGraphEdgesInner&gt;**](AutomationGraphEdgesInner.md) |  |  |
| **entry** | **Array&lt;String&gt;** | The node runs start at. |  |
| **limits** | [**AutomationGraphLimits**](AutomationGraphLimits.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationGraph.new(
  triggers: null,
  nodes: null,
  edges: null,
  entry: null,
  limits: null
)
```

