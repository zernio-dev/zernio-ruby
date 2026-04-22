# Zernio::QueueSlotsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exists** | **Boolean** |  | [optional] |
| **schedule** | [**QueueSchedule**](QueueSchedule.md) |  | [optional] |
| **next_slots** | **Array&lt;Time&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueueSlotsResponse.new(
  exists: null,
  schedule: null,
  next_slots: null
)
```

