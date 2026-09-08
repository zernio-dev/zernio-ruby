# Zernio::BusinessAgentBudget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | Pass it back to edit an existing budget; omit to add one. | [optional] |
| **unit_type** | **String** | Tokens count across the Business Manager, AI turns per conversation. |  |
| **time_window** | **String** | Rolling window in the WABA timezone. |  |
| **max_budget** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentBudget.new(
  budget_id: null,
  unit_type: null,
  time_window: null,
  max_budget: null
)
```

