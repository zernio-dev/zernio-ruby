# Zernio::AutomationPostSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **every** | **String** |  |  |
| **starts_at** | **Time** | Runs from this time on. | [optional] |
| **ends_at** | **Time** | Stops running after this time. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationPostSchedule.new(
  type: null,
  every: null,
  starts_at: null,
  ends_at: null
)
```

