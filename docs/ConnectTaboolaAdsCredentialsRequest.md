# Zernio::ConnectTaboolaAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taboola_account_id** | **String** | Numeric Taboola Account ID, shown in Realize under the account name. |  |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectTaboolaAdsCredentialsRequest.new(
  taboola_account_id: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

