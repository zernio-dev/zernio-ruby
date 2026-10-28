# Zernio::CreatorPortalPayoutEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **amount_cents** | **Integer** |  |  |
| **from_bucket** | **String** | The participant bucket the money left; null when it came from outside the participant. |  |
| **to_bucket** | **String** | The participant bucket the money entered; null when it left the participant. |  |
| **hold_until** | **Time** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalPayoutEntry.new(
  id: null,
  kind: null,
  amount_cents: null,
  from_bucket: null,
  to_bucket: null,
  hold_until: null,
  created_at: null
)
```

