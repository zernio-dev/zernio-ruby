# Zernio::DiscordScheduledEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event snowflake ID | [optional] |
| **guild_id** | **String** |  | [optional] |
| **channel_id** | **String** | Voice/stage channel ID; null for external events. | [optional] |
| **creator_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **scheduled_start_time** | **Time** |  | [optional] |
| **scheduled_end_time** | **Time** | Required for external events; optional for voice/stage. | [optional] |
| **privacy_level** | **Integer** | Always 2 (GUILD_ONLY) — Discord deprecated PUBLIC events. | [optional] |
| **status** | **Integer** | 1&#x3D;SCHEDULED, 2&#x3D;ACTIVE, 3&#x3D;COMPLETED, 4&#x3D;CANCELED | [optional] |
| **entity_type** | **Integer** | 1&#x3D;STAGE_INSTANCE, 2&#x3D;VOICE, 3&#x3D;EXTERNAL | [optional] |
| **entity_id** | **String** |  | [optional] |
| **entity_metadata** | [**DiscordScheduledEventEntityMetadata**](DiscordScheduledEventEntityMetadata.md) |  | [optional] |
| **user_count** | **Integer** | Number of members who RSVP&#39;d. Only present when withUserCount&#x3D;true on list. | [optional] |
| **image** | **String** | Cover image hash; build URL via cdn.discordapp.com. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DiscordScheduledEvent.new(
  id: null,
  guild_id: null,
  channel_id: null,
  creator_id: null,
  name: null,
  description: null,
  scheduled_start_time: null,
  scheduled_end_time: null,
  privacy_level: null,
  status: null,
  entity_type: null,
  entity_id: null,
  entity_metadata: null,
  user_count: null,
  image: null
)
```

