# Zernio::AcceptConversationRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook or Instagram social account ID |  |
| **message** | **String** | The reply that accepts the request |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AcceptConversationRequestRequest.new(
  account_id: null,
  message: null
)
```

