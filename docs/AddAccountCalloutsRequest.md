# Zernio::AddAccountCalloutsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **callouts** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAccountCalloutsRequest.new(
  account_id: null,
  customer_id: null,
  callouts: null
)
```

