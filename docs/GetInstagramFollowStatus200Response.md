# Zernio::GetInstagramFollowStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **is_follower** | **Boolean** | The user follows this account. Null &#x3D; unknown, never \&quot;no\&quot;. |  |
| **is_followed_by_account** | **Boolean** | This account follows the user. | [optional] |
| **follower_count** | **Integer** |  | [optional] |
| **is_verified** | **Boolean** |  | [optional] |
| **username** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **unavailable_reason** | **String** | Why the follow relationship could not be resolved. Null when it was. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInstagramFollowStatus200Response.new(
  user_id: null,
  account_id: null,
  is_follower: null,
  is_followed_by_account: null,
  follower_count: null,
  is_verified: null,
  username: null,
  name: null,
  unavailable_reason: null
)
```

