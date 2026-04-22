# Zernio::UpdateDiscordSettings200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **account** | [**UpdateDiscordSettings200ResponseAccount**](UpdateDiscordSettings200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateDiscordSettings200Response.new(
  message: Discord settings updated,
  account: null
)
```

