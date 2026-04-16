# Late::GoogleBusinessPlatformDataEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Event name (displayed as the event heading on Google Search and Maps) |  |
| **schedule** | [**GoogleBusinessPlatformDataEventSchedule**](GoogleBusinessPlatformDataEventSchedule.md) |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::GoogleBusinessPlatformDataEvent.new(
  title: Grand Opening Weekend,
  schedule: null
)
```

