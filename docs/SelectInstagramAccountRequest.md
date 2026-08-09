# Zernio::SelectInstagramAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your connection flow |  |
| **page_id** | **String** | The Facebook Page ID selected by the user, from GET /v1/connect/instagram/select-account |  |
| **temp_token** | **String** | Long-lived Facebook user access token from the OAuth callback redirect |  |
| **redirect_url** | **String** | Optional custom redirect URL to return to after selection | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectInstagramAccountRequest.new(
  profile_id: null,
  page_id: null,
  temp_token: null,
  redirect_url: null
)
```

