# Zernio::ConnectAwinCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | Awin API key. |  |
| **advertiser_id** | **String** | Numeric Awin advertiser id. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectAwinCredentialsRequest.new(
  api_key: null,
  advertiser_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

