# Zernio::SelectGoogleBusinessLocationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your connection flow |  |
| **location_id** | **String** | The Google Business location ID selected by the user |  |
| **pending_data_token** | **String** | Token from the OAuth callback redirect (pendingDataToken query param). Tokens and profile data are retrieved server-side from this token. |  |
| **redirect_url** | **String** | Optional custom redirect URL to return to after selection | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectGoogleBusinessLocationRequest.new(
  profile_id: null,
  location_id: null,
  pending_data_token: null,
  redirect_url: null
)
```

