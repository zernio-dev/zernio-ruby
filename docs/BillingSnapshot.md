# Zernio::BillingSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_system** | **String** |  | [optional] |
| **plan** | [**BillingSnapshotPlan**](BillingSnapshotPlan.md) |  | [optional] |
| **period** | [**BillingSnapshotPeriod**](BillingSnapshotPeriod.md) |  | [optional] |
| **balance** | [**BillingSnapshotBalance**](BillingSnapshotBalance.md) |  | [optional] |
| **caps** | [**BillingSnapshotCaps**](BillingSnapshotCaps.md) |  | [optional] |
| **status** | [**BillingSnapshotStatus**](BillingSnapshotStatus.md) |  | [optional] |
| **legacy** | [**BillingSnapshotLegacy**](BillingSnapshotLegacy.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshot.new(
  billing_system: null,
  plan: null,
  period: null,
  balance: null,
  caps: null,
  status: null,
  legacy: null
)
```

