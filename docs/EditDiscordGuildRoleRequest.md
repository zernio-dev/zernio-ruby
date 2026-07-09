# Zernio::EditDiscordGuildRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **color** | **Integer** |  | [optional] |
| **hoist** | **Boolean** |  | [optional] |
| **mentionable** | **Boolean** |  | [optional] |
| **permissions** | **String** | Permissions bitfield as a stringified integer | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditDiscordGuildRoleRequest.new(
  name: null,
  color: null,
  hoist: null,
  mentionable: null,
  permissions: null
)
```

