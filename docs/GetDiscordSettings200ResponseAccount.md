# Late::GetDiscordSettings200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** | Channel name | [optional] |
| **display_name** | **String** | Guild - #channel display name | [optional] |
| **profile_picture** | **String** | Guild icon URL | [optional] |
| **channel_id** | **String** | Connected channel snowflake ID | [optional] |
| **channel_name** | **String** | Channel name | [optional] |
| **channel_type** | **String** | Channel type (0 &#x3D; text, 5 &#x3D; announcement, 15 &#x3D; forum) | [optional] |
| **guild_id** | **String** | Guild (server) snowflake ID | [optional] |
| **webhook_username** | **String** | Custom webhook display name (null &#x3D; default \&quot;Zernio\&quot;) | [optional] |
| **webhook_avatar_url** | **String** | Custom webhook avatar URL (null &#x3D; default bot avatar) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetDiscordSettings200ResponseAccount.new(
  _id: null,
  platform: discord,
  username: null,
  display_name: null,
  profile_picture: null,
  channel_id: null,
  channel_name: null,
  channel_type: null,
  guild_id: null,
  webhook_username: null,
  webhook_avatar_url: null
)
```

