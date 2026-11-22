# Zernio::ConnectSnapchatAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Conversions API token from the organization that owns the pixel. |  |
| **pixel_id** | **String** | Snap Pixel ID from Events Manager, a UUID. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectSnapchatAdsCredentialsRequest.new(
  access_token: null,
  pixel_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

