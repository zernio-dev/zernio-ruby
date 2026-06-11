# Zernio::BlockWhatsAppUsersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **users** | **Array&lt;String&gt;** | Phone numbers (E.164, e.g. \&quot;+16505551234\&quot;) or WhatsApp user IDs to block. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BlockWhatsAppUsersRequest.new(
  account_id: null,
  users: null
)
```

