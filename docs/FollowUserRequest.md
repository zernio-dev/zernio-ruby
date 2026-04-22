# Zernio::FollowUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID |  |
| **target_user_id** | **String** | The Twitter ID of the user to follow |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FollowUserRequest.new(
  account_id: null,
  target_user_id: null
)
```

