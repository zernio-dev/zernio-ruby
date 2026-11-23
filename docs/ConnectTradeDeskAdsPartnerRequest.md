# Zernio::ConnectTradeDeskAdsPartnerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_id** | **String** | Trade Desk Partner ID, a short code such as &#x60;ptn1234&#x60;. Stored and echoed lowercased. |  |
| **api_token** | **String** | API token of a Trade Desk user with API access to the partner. |  |
| **ad_account_ids** | **Array&lt;String&gt;** | Advertiser ids to keep. Left out or empty, a new connection keeps every advertiser and a reconnect keeps its saved selection. | [optional] |
| **name** | **String** | Optional display name for the account. | [optional] |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after a successful connection, echoed back as redirectUrl. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectTradeDeskAdsPartnerRequest.new(
  partner_id: null,
  api_token: null,
  ad_account_ids: null,
  name: null,
  profile_id: null,
  state: null,
  redirect_url: null
)
```

