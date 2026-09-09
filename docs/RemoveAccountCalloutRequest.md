# Zernio::RemoveAccountCalloutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **asset_id** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveAccountCalloutRequest.new(
  account_id: null,
  customer_id: null,
  asset_id: null
)
```

