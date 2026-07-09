# Zernio::BillingSnapshotStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_access** | **Boolean** |  | [optional] |
| **suspended** | **Boolean** |  | [optional] |
| **suspended_at** | **Time** |  | [optional] |
| **suspension_reason** | **String** |  | [optional] |
| **open_invoice_url** | **String** | Hosted invoice URL for dunning (Stripe). | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **auto_upgrade_enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshotStatus.new(
  has_access: null,
  suspended: null,
  suspended_at: null,
  suspension_reason: null,
  open_invoice_url: null,
  decline_reason: null,
  auto_upgrade_enabled: null
)
```

