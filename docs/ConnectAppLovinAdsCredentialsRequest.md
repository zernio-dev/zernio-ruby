# Zernio::ConnectAppLovinAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | Conversion API key from the Keys page of Axon Ads Manager. |  |
| **event_key** | **String** | Event Key from the Keys page of Axon Ads Manager: 8 to 128 letters, digits, dots, dashes or underscores. |  |
| **report_key** | **String** | Optional Report Key from the Keys page of your AppLovin account. With it, Zernio syncs AppLovin spend per campaign. | [optional] |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectAppLovinAdsCredentialsRequest.new(
  api_key: null,
  event_key: null,
  report_key: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

