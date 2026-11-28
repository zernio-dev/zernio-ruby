# Zernio::FacebookBlockedUserRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **psid** | **String** | Page-scoped id of a Messenger contact, the &#x60;platformUserId&#x60; of a Facebook inbox conversation participant. | [optional] |
| **user_id** | **String** | A page-scoped Facebook user id or a Page id. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookBlockedUserRef.new(
  psid: null,
  user_id: null
)
```

