# Zernio::CommerceMoney

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** |  |  |
| **currency** | **String** | ISO 4217 code. Never null: the store currency is filled in when the platform omits it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceMoney.new(
  amount: 19.90,
  currency: USD
)
```

