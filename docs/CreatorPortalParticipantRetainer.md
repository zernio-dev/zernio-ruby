# Zernio::CreatorPortalParticipantRetainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_start** | **Time** |  |  |
| **period_end** | **Time** | Null on a one-time retainer of a campaign without an end date. |  |
| **approved_posts** | **Integer** |  |  |
| **required_approved_posts** | **Integer** |  |  |
| **commission_cents** | **Integer** | Commission earned in the period; a smart retainer tops it up to its amount. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalParticipantRetainer.new(
  period_start: null,
  period_end: null,
  approved_posts: null,
  required_approved_posts: null,
  commission_cents: null
)
```

