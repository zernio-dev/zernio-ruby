# Zernio::ListBidStrategies200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **currency** | **String** | Account currency code; money fields are in this currency&#39;s units. | [optional] |
| **strategies** | [**Array&lt;PortfolioBidStrategy&gt;**](PortfolioBidStrategy.md) |  | [optional] |
| **cached_at** | **Time** | When this data was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBidStrategies200Response.new(
  customer_id: null,
  currency: null,
  strategies: null,
  cached_at: null,
  stale: null
)
```

