# Zernio::SendSms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Message ID | [optional] |
| **conversation_id** | **String** | Inbox conversation the message was threaded into. | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendSms200Response.new(
  id: null,
  conversation_id: null,
  status: null
)
```

