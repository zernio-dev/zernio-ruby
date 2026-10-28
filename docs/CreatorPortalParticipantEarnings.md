# Zernio::CreatorPortalParticipantEarnings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accruing_cents** | **Integer** | Earned, not approved yet. |  |
| **owed_cents** | **Integer** | Approved, on hold. |  |
| **payable_cents** | **Integer** |  |  |
| **paying_cents** | **Integer** | A payout in flight. |  |
| **paid_cents** | **Integer** |  |  |
| **next_release_at** | **Time** | When the next held amount becomes payable. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalParticipantEarnings.new(
  accruing_cents: null,
  owed_cents: null,
  payable_cents: null,
  paying_cents: null,
  paid_cents: null,
  next_release_at: null
)
```

