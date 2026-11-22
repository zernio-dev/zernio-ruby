# Zernio::ConnectAttentiveCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | API key of an Attentive custom app. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectAttentiveCredentialsRequest.new(
  api_key: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

