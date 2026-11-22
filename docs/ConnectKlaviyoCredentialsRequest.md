# Zernio::ConnectKlaviyoCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | Klaviyo private API key, starting with pk_. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectKlaviyoCredentialsRequest.new(
  api_key: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

