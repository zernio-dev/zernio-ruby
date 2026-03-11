# Late::ScheduleWhatsAppBroadcastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheduled_at** | **Time** | ISO 8601 date-time for sending (must be in the future, max 30 days) |  |

## Example

```ruby
require 'late-sdk'

instance = Late::ScheduleWhatsAppBroadcastRequest.new(
  scheduled_at: null
)
```

