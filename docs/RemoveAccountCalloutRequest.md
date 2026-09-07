# Zernio::RemoveAccountCalloutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id owning the Google Ads connection. |  |
| **customer_id** | **String** | Numeric Google Ads customer id. Only required when the connection has more than one. | [optional] |
| **asset_id** | **String** | Numeric asset id from GET /v1/ads/accounts/callouts. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveAccountCalloutRequest.new(
  account_id: null,
  customer_id: null,
  asset_id: null
)
```

