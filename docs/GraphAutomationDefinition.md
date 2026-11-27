# Zernio::GraphAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** | Sequences and flows. | [optional] |
| **status** | **String** |  | [optional] |
| **graph** | [**AutomationGraph**](AutomationGraph.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GraphAutomationDefinition.new(
  name: null,
  description: null,
  status: null,
  graph: null
)
```

