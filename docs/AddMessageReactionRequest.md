# Zernio::AddMessageReactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **emoji** | **String** | Emoji character (e.g. \&quot;👍\&quot;, \&quot;❤️\&quot;) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddMessageReactionRequest.new(
  account_id: null,
  emoji: 👍
)
```

