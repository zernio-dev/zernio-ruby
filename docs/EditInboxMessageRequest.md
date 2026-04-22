# Zernio::EditInboxMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **text** | **String** | New message text | [optional] |
| **reply_markup** | [**EditInboxMessageRequestReplyMarkup**](EditInboxMessageRequestReplyMarkup.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditInboxMessageRequest.new(
  account_id: null,
  text: null,
  reply_markup: null
)
```

