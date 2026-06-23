# Zernio::QueueNextSlotResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |
| **next_slot** | **Time** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **queue_id** | **String** | Queue ID this slot belongs to | [optional] |
| **queue_name** | **String** | Queue name | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueueNextSlotResponse.new(
  profile_id: null,
  next_slot: null,
  timezone: null,
  queue_id: null,
  queue_name: null
)
```

