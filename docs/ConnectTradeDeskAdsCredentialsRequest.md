# Zernio::ConnectTradeDeskAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **advertiser_id** | **String** | Trade Desk Advertiser ID, a short code such as &#x60;abc1234&#x60;. |  |
| **tracker_id** | **String** | Tracking tag id of a Real-Time Conversion tag, a short code such as &#x60;xyz7890&#x60;. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectTradeDeskAdsCredentialsRequest.new(
  advertiser_id: null,
  tracker_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

