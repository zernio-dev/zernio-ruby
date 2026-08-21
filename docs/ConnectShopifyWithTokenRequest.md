# Zernio::ConnectShopifyWithTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Your Zernio profile ID (get from /v1/profiles). |  |
| **shop** | **String** | The myshopify.com store domain, e.g. &#x60;your-store.myshopify.com&#x60; (the bare &#x60;your-store&#x60; prefix is accepted too). |  |
| **access_token** | **String** | Admin API access token of the merchant-created custom app (starts with &#x60;shpat_&#x60;). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectShopifyWithTokenRequest.new(
  profile_id: null,
  shop: null,
  access_token: null
)
```

