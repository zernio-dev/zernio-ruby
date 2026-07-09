# Zernio::CreateDiscordThreadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Thread name |  |
| **message_id** | **String** | Optional message snowflake to start the thread from. Omit for a standalone thread. | [optional] |
| **auto_archive_duration** | **Integer** | Minutes of inactivity before the thread auto-archives. Discord accepts only these four values. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateDiscordThreadRequest.new(
  name: null,
  message_id: null,
  auto_archive_duration: null
)
```

