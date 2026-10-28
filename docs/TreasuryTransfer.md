# Zernio::TreasuryTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **payee_id** | **String** | 24-character payee id | [optional] |
| **payee_name** | **String** | The payee&#39;s name when Zernio knows it, for example a creator&#39;s display name in one of your creator campaigns; null otherwise | [optional] |
| **destination_type** | **String** |  | [optional] |
| **amount_cents** | **Integer** | Amount the payee receives, in full | [optional] |
| **fee_cents** | **Integer** | Zernio fee added on top, 4% with a 50 cent minimum | [optional] |
| **total_cents** | **Integer** | Amount debited from your balance: amountCents plus feeCents | [optional] |
| **currency** | **String** |  | [optional] |
| **reference** | [**TreasuryTransferReference**](TreasuryTransferReference.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TreasuryTransfer.new(
  id: null,
  payee_id: null,
  payee_name: null,
  destination_type: null,
  amount_cents: null,
  fee_cents: null,
  total_cents: null,
  currency: null,
  reference: null,
  status: null,
  failure_reason: null,
  created_at: null
)
```

