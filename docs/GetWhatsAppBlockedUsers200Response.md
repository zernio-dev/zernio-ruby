# Zernio::GetWhatsAppBlockedUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blocked_users** | [**Array&lt;GetWhatsAppBlockedUsers200ResponseBlockedUsersInner&gt;**](GetWhatsAppBlockedUsers200ResponseBlockedUsersInner.md) |  | [optional] |
| **next_cursor** | **String** | Pass as &#x60;after&#x60; to fetch the next page. Null when there are no more pages. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppBlockedUsers200Response.new(
  blocked_users: null,
  next_cursor: null
)
```

