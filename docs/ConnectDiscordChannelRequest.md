# Zernio::ConnectDiscordChannelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord server (guild) the channel belongs to |  |
| **channel_id** | **String** | Text, announcement or forum channel to publish to |  |
| **profile_id** | **String** | Profile to connect the channel to |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectDiscordChannelRequest.new(
  guild_id: null,
  channel_id: null,
  profile_id: null
)
```

