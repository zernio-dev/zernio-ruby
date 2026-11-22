# Zernio::ProfileCallLimitsResponseProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outbound_calls_per_hour** | [**ProfileCallLimit**](ProfileCallLimit.md) |  | [optional] |
| **daily_call_spend_usd** | [**ProfileCallLimit**](ProfileCallLimit.md) |  | [optional] |
| **forwarded_minutes_per_day** | [**ProfileCallLimit**](ProfileCallLimit.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ProfileCallLimitsResponseProfile.new(
  outbound_calls_per_hour: null,
  daily_call_spend_usd: null,
  forwarded_minutes_per_day: null
)
```

