# Zernio::ListBidStrategies200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **currency** | **String** | Account currency code; money fields are in this currency&#39;s units. | [optional] |
| **strategies** | [**Array&lt;PortfolioBidStrategy&gt;**](PortfolioBidStrategy.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBidStrategies200Response.new(
  customer_id: null,
  currency: null,
  strategies: null
)
```

