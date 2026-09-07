# Zernio::AddAccountCalloutsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id owning the Google Ads connection. |  |
| **customer_id** | **String** | Numeric Google Ads customer id. Only required when the connection has more than one. | [optional] |
| **callouts** | **Array&lt;String&gt;** | Callout text, 1-25 characters each; up to 20 per request (Google&#39;s CalloutAsset limits). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAccountCalloutsRequest.new(
  account_id: null,
  customer_id: null,
  callouts: null
)
```

