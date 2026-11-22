# Zernio::UsageMeteringLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **product** | **String** |  | [optional] |
| **total_usd** | **Float** |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **paid_from** | **String** | Present only on pay-per-use paid from the prepaid balance (balance billing). That spend is included in &#x60;days&#x60; and &#x60;totals&#x60; but is not on the monthly invoice. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMeteringLineItemsInner.new(
  name: null,
  product: null,
  total_usd: null,
  quantity: null,
  paid_from: null
)
```

