# Zernio::FlowAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **status** | **String** | A new flow is &#x60;draft&#x60; (the default) or &#x60;active&#x60;, which needs a complete graph. An active or paused flow never goes back to draft, and only an active flow can be paused. | [optional] |
| **trigger** | [**FlowAutomationDefinitionTrigger**](FlowAutomationDefinitionTrigger.md) |  |  |
| **graph** | [**FlowAutomationDefinitionGraph**](FlowAutomationDefinitionGraph.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FlowAutomationDefinition.new(
  name: null,
  description: null,
  status: null,
  trigger: null,
  graph: null
)
```

