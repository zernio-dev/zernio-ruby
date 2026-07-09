# Zernio::BillingSnapshotCaps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_spend_used_cents** | **Integer** |  | [optional] |
| **x_spend_limit_cents** | **Integer** | Monthly X-API spend cap; null &#x3D; unlimited. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshotCaps.new(
  x_spend_used_cents: null,
  x_spend_limit_cents: null
)
```

