# Zernio::TreasuryPayee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **payee_type** | **String** |  | [optional] |
| **payee_ref** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **onboarding_status** | **String** |  | [optional] |
| **details_submitted** | **Boolean** |  | [optional] |
| **payouts_enabled** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TreasuryPayee.new(
  id: null,
  payee_type: null,
  payee_ref: null,
  country: null,
  onboarding_status: null,
  details_submitted: null,
  payouts_enabled: null,
  created_at: null
)
```

