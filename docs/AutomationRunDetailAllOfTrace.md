# Zernio::AutomationRunDetailAllOfTrace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **node_id** | **String** |  |  |
| **subject_id** | **String** | The object an ad rule, event or scheduled automation acted on. |  |
| **status** | **String** |  |  |
| **at** | **Time** |  |  |
| **note** | **String** | Which branch a condition took, or why a step failed or was skipped. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRunDetailAllOfTrace.new(
  type: null,
  node_id: null,
  subject_id: null,
  status: null,
  at: null,
  note: null
)
```

