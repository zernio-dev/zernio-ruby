# Zernio::DiscordPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Target channel snowflake ID. Determines which channel in the connected server receives the message. |  |
| **embeds** | [**Array&lt;DiscordPlatformDataEmbedsInner&gt;**](DiscordPlatformDataEmbedsInner.md) | Up to 10 Discord embed objects (combined max 6,000 characters across all embeds). Sent alongside or instead of plain-text content. | [optional] |
| **poll** | [**DiscordPlatformDataPoll**](DiscordPlatformDataPoll.md) |  | [optional] |
| **crosspost** | **Boolean** | Auto-crosspost to every server following this announcement channel (type 5). No-op for regular text channels. | [optional] |
| **forum_thread_name** | **String** | Thread title for forum channel posts (type 15). Required when posting to a forum channel. | [optional] |
| **forum_applied_tags** | **Array&lt;String&gt;** | Tag snowflake IDs to apply to forum posts. Max 5 tags. | [optional] |
| **thread_from_message** | [**DiscordPlatformDataThreadFromMessage**](DiscordPlatformDataThreadFromMessage.md) |  | [optional] |
| **tts** | **Boolean** | Send as text-to-speech message. Discord reads the message aloud in the channel. | [optional] |
| **webhook_username** | **String** | Override the webhook display name for this post only (1-80 chars). Falls back to the account-level default set via PATCH /v1/connect/discord. | [optional] |
| **webhook_avatar_url** | **String** | Override the webhook avatar URL for this post only. Falls back to the account-level default. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DiscordPlatformData.new(
  channel_id: 1234567890123456789,
  embeds: null,
  poll: null,
  crosspost: null,
  forum_thread_name: null,
  forum_applied_tags: null,
  thread_from_message: null,
  tts: null,
  webhook_username: null,
  webhook_avatar_url: null
)
```

