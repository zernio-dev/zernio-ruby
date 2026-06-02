# Zernio::SendDiscordDirectMessage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Discord message snowflake ID | [optional] |
| **channel_id** | **String** | DM channel snowflake (Discord auto-creates one per recipient pair) | [optional] |
| **url** | **String** | Direct link to the message — uses Discord&#39;s @me path for DMs | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **recipient** | [**SendDiscordDirectMessage200ResponseRecipient**](SendDiscordDirectMessage200ResponseRecipient.md) |  | [optional] |
| **account** | [**SendDiscordDirectMessage200ResponseAccount**](SendDiscordDirectMessage200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendDiscordDirectMessage200Response.new(
  message_id: null,
  channel_id: null,
  url: null,
  timestamp: null,
  recipient: null,
  account: null
)
```

