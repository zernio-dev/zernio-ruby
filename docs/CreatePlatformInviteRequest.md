# Zernio::CreatePlatformInviteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile the account is connected to. |  |
| **platform** | **String** |  |  |
| **account_id** | **String** | Reconnect this existing account instead of adding a new one. It must belong to the profile and platform. | [optional] |
| **login_method** | **String** | Instagram only. instagram_login (the default) uses Instagram Login, facebook_login uses Facebook Login. A reconnect link keeps the method the account was connected with. | [optional] |
| **expires_in_days** | **Integer** | Days until the link expires. | [optional][default to 7] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePlatformInviteRequest.new(
  profile_id: null,
  platform: null,
  account_id: null,
  login_method: null,
  expires_in_days: null
)
```

