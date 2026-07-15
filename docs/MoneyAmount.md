# Zernio::MoneyAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Amount as a decimal string, e.g. \&quot;88.59\&quot;. |  |
| **currency_code** | **String** | ISO 4217 currency code, e.g. \&quot;USD\&quot;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MoneyAmount.new(
  amount: null,
  currency_code: null
)
```

