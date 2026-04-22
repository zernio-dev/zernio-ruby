# Zernio::UpdateDiscordSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_username** | **String** | Custom display name for the webhook (1-80 chars). Empty string resets to default (\&quot;Zernio\&quot;). Cannot contain \&quot;clyde\&quot; or \&quot;discord\&quot;. | [optional] |
| **webhook_avatar_url** | **String** | Custom avatar URL. Empty string resets to default bot avatar. | [optional] |
| **channel_id** | **String** | Switch to a different channel in the same guild. Must be a text (0), announcement (5), or forum (15) channel. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateDiscordSettingsRequest.new(
  webhook_username: null,
  webhook_avatar_url: null,
  channel_id: null
)
```

