# Zernio::AutomationRunSteps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **done** | **Integer** | Steps the run has taken. |  |
| **current_node_id** | **String** | The graph node the run is at, where its kind has one. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRunSteps.new(
  done: null,
  current_node_id: null
)
```

