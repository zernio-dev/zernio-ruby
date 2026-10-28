# Zernio::CampaignLedgerEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **amount_cents** | **Integer** | Always positive; direction is given by debit and credit. |  |
| **debit** | [**LedgerAccountSide**](LedgerAccountSide.md) |  |  |
| **credit** | [**LedgerAccountSide**](LedgerAccountSide.md) |  |  |
| **hold_until** | **Time** |  |  |
| **released_by_entry_id** | **String** |  |  |
| **reverses_entry_id** | **String** |  |  |
| **reference_type** | **String** |  |  |
| **reference_id** | **String** |  |  |
| **cause** | **String** |  |  |
| **external_reference** | **String** | The payout reference recorded with a settlement (your transfer or invoice id). |  |
| **actor** | **String** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignLedgerEntry.new(
  id: null,
  kind: null,
  amount_cents: null,
  debit: null,
  credit: null,
  hold_until: null,
  released_by_entry_id: null,
  reverses_entry_id: null,
  reference_type: null,
  reference_id: null,
  cause: null,
  external_reference: null,
  actor: null,
  created_at: null
)
```

