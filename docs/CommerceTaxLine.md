# Zernio::CommerceTaxLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **rate_percent** | **Float** | Percent, e.g. 20 for 20%. Null when the platform does not say. | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceTaxLine.new(
  title: TVA 20%,
  rate_percent: null,
  amount: null
)
```

