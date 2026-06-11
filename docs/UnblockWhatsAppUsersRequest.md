# Zernio::UnblockWhatsAppUsersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **users** | **Array&lt;String&gt;** | Phone numbers (E.164) or WhatsApp user IDs to unblock. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UnblockWhatsAppUsersRequest.new(
  account_id: null,
  users: null
)
```

