# Late::DiscordPlatformDataThreadFromMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Thread name (1-100 chars) | [optional] |
| **auto_archive_duration** | **Integer** | Auto-archive after inactivity (minutes) | [optional] |
| **rate_limit_per_user** | **Integer** | Slow-mode duration in seconds (0-21600) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::DiscordPlatformDataThreadFromMessage.new(
  name: null,
  auto_archive_duration: null,
  rate_limit_per_user: null
)
```

