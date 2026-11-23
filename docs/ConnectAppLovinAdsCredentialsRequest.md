# Zernio::ConnectAppLovinAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | Conversion API key from the Keys page of AppLovin Axon Ads Manager. Sent with eventKey. | [optional] |
| **event_key** | **String** | Event Key from the Keys page of AppLovin Axon Ads Manager: 8 to 128 letters, digits, dots, dashes or underscores. Sent with apiKey. | [optional] |
| **campaign_api_key** | **String** | Campaign Management API key from the Keys page of ads.axon.ai (visible to account Admins only). Sent with accountId. Lets Zernio read, create and manage campaigns and creative sets. | [optional] |
| **account_id** | **String** | Numeric AppLovin account id (Account menu, then Go to settings, in ads.axon.ai). Sent with campaignApiKey. | [optional] |
| **reconnect_account_id** | **String** | The Zernio id of the AppLovin connection being reconnected (a connection on this profile). The keys sent update that connection, which keeps its identity, instead of creating one: send it to add or replace keys on an existing connection. | [optional] |
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
  campaign_api_key: null,
  account_id: null,
  reconnect_account_id: null,
  report_key: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

