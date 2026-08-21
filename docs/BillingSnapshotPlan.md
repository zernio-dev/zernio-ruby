# Zernio::BillingSnapshotPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **is_usage_based** | **Boolean** |  | [optional] |
| **is_paid** | **Boolean** | True when the key belongs to an account with an active paid billing relationship (Stripe subscription, Metronome enrollment, or Shopify-managed billing). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshotPlan.new(
  name: null,
  is_usage_based: null,
  is_paid: null
)
```

