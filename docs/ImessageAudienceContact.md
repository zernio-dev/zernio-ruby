# Zernio::ImessageAudienceContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **contact** | **String** | The contact handle (E.164 phone or email) | [optional] |
| **name** | **String** |  | [optional] |
| **subscribed** | **Boolean** |  | [optional] |
| **last_message** | **String** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |
| **first_seen_at** | **Time** |  | [optional] |
| **opt_in** | [**ImessageAudienceContactOptIn**](ImessageAudienceContactOptIn.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImessageAudienceContact.new(
  conversation_id: null,
  account_id: null,
  contact: null,
  name: null,
  subscribed: null,
  last_message: null,
  last_message_at: null,
  first_seen_at: null,
  opt_in: null
)
```

