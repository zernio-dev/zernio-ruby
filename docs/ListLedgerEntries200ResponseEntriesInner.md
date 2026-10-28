# Zernio::ListLedgerEntries200ResponseEntriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **amount_cents** | **Integer** | Always positive; direction is given by debit and credit | [optional] |
| **debit** | [**LedgerAccountSide**](LedgerAccountSide.md) |  | [optional] |
| **credit** | [**LedgerAccountSide**](LedgerAccountSide.md) |  | [optional] |
| **hold_until** | **Time** |  | [optional] |
| **released_by_entry_id** | **String** |  | [optional] |
| **reference_type** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **reverses_entry_id** | **String** |  | [optional] |
| **cause** | **String** |  | [optional] |
| **actor** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLedgerEntries200ResponseEntriesInner.new(
  id: null,
  kind: null,
  amount_cents: null,
  debit: null,
  credit: null,
  hold_until: null,
  released_by_entry_id: null,
  reference_type: null,
  reference_id: null,
  reverses_entry_id: null,
  cause: null,
  actor: null,
  created_at: null
)
```

