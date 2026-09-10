# Zernio::SelectFacebookPageRequestOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your classic connection flow. |  |
| **page_id** | **String** | The Facebook Page ID selected by the user. |  |
| **temp_token** | **String** | Temporary Facebook access token from OAuth. |  |
| **user_profile** | [**SelectFacebookPageRequestOneOfUserProfile**](SelectFacebookPageRequestOneOfUserProfile.md) |  |  |
| **redirect_url** | **String** | Optional custom redirect URL to return to after selection. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectFacebookPageRequestOneOf.new(
  profile_id: null,
  page_id: null,
  temp_token: null,
  user_profile: null,
  redirect_url: null
)
```

