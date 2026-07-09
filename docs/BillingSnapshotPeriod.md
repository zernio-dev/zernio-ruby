# Zernio::BillingSnapshotPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Time** |  | [optional] |
| **_end** | **Time** |  | [optional] |
| **anchor_day** | **Integer** | Day-of-month the cycle resets. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshotPeriod.new(
  start: null,
  _end: null,
  anchor_day: null
)
```

