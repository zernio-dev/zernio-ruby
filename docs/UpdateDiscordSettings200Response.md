# Late::UpdateDiscordSettings200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **account** | [**UpdateDiscordSettings200ResponseAccount**](UpdateDiscordSettings200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateDiscordSettings200Response.new(
  message: Discord settings updated,
  account: null
)
```

