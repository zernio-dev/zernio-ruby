# Zernio::BillingSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_system** | **String** |  | [optional] |
| **plan** | [**BillingSnapshotPlan**](BillingSnapshotPlan.md) |  | [optional] |
| **shopify_shop_domain** | **String** | myshopify.com domain owning the subscription; present only when billingSystem is shopify. | [optional] |
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
  shopify_shop_domain: null,
  period: null,
  balance: null,
  caps: null,
  status: null,
  legacy: null
)
```

