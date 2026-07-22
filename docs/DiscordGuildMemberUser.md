# Zernio::DiscordGuildMemberUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User snowflake | [optional] |
| **username** | **String** |  | [optional] |
| **discriminator** | **String** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **global_name** | **String** | User&#39;s display name (post-2023 Discord rebrand) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DiscordGuildMemberUser.new(
  id: null,
  username: null,
  discriminator: null,
  avatar: null,
  global_name: null
)
```

