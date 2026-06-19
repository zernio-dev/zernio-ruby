# Zernio::SendSms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Telnyx message id | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendSms200Response.new(
  id: null,
  conversation_id: null,
  status: sent
)
```

