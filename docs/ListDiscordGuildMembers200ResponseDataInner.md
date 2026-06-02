# Zernio::ListDiscordGuildMembers200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**ListDiscordGuildMembers200ResponseDataInnerUser**](ListDiscordGuildMembers200ResponseDataInnerUser.md) |  | [optional] |
| **nick** | **String** | Guild-specific nickname | [optional] |
| **roles** | **Array&lt;String&gt;** | Snowflake IDs of roles assigned to this member | [optional] |
| **joined_at** | **Time** |  | [optional] |
| **premium_since** | **Time** | When the user started boosting the server | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListDiscordGuildMembers200ResponseDataInner.new(
  user: null,
  nick: null,
  roles: null,
  joined_at: null,
  premium_since: null
)
```

