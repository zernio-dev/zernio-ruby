# Zernio::MoveAccountToProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Target profile ID (must be a valid ObjectId and owned by the same user as the account). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MoveAccountToProfileRequest.new(
  profile_id: null
)
```

