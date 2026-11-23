# Zernio::ConnectOutbrainAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outbrain_marketer_id** | **String** | Outbrain marketer id from Amplify, letters and digits. |  |
| **name** | **String** | Optional display name for the marketer. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectOutbrainAdsCredentialsRequest.new(
  outbrain_marketer_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

