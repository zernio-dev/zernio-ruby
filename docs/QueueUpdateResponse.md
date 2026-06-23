# Zernio::QueueUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **schedule** | [**QueueSchedule**](QueueSchedule.md) |  | [optional] |
| **next_slots** | **Array&lt;Time&gt;** |  | [optional] |
| **reshuffled_count** | **Integer** |  | [optional] |
| **skipped_daily_limit** | **Integer** |  | [optional] |
| **is_new_queue** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueueUpdateResponse.new(
  success: null,
  schedule: null,
  next_slots: null,
  reshuffled_count: null,
  skipped_daily_limit: null,
  is_new_queue: null
)
```

