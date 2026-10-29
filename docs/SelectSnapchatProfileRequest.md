# Zernio::SelectSnapchatProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **selected_public_profile** | [**SelectSnapchatProfileRequestSelectedPublicProfile**](SelectSnapchatProfileRequestSelectedPublicProfile.md) |  |  |
| **temp_token** | **String** | Temporary Snapchat access token from OAuth |  |
| **user_profile** | **Object** | User profile data from OAuth redirect |  |
| **refresh_token** | **String** | Snapchat refresh token (if available) | [optional] |
| **expires_in** | **Integer** | Token expiration time in seconds | [optional] |
| **redirect_url** | **String** | Custom redirect URL after connection completes | [optional] |
| **oauth_app_id** | **String** | The &#x60;oauthAppId&#x60; from the selection redirect, when the connect ran on one of your own OAuth apps. Pass it back so a retried selection stays on that app; a different app than the connect used returns 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectSnapchatProfileRequest.new(
  profile_id: null,
  selected_public_profile: null,
  temp_token: null,
  user_profile: null,
  refresh_token: null,
  expires_in: null,
  redirect_url: null,
  oauth_app_id: null
)
```

