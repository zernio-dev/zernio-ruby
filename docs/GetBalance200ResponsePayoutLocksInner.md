# Zernio::GetBalance200ResponsePayoutLocksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |
| **amount_cents** | **Integer** |  |  |
| **charged_at** | **Time** |  |  |
| **unlocks_at** | **Time** | From this time transfers can use it: 7 days after the charge. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetBalance200ResponsePayoutLocksInner.new(
  topup_id: null,
  amount_cents: null,
  charged_at: null,
  unlocks_at: null
)
```

