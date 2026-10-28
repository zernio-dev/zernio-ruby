# Zernio::GetLedgerBalances200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope_type** | **String** |  | [optional] |
| **scope_id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **balances** | **Hash&lt;String, Integer&gt;** | Bucket name to balance in cents (credits minus debits) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLedgerBalances200Response.new(
  scope_type: null,
  scope_id: null,
  currency: null,
  balances: null
)
```

