# Zernio::ProfileCallLimitsResponseTeam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **concurrent_calls** | [**ProfileCallLimit**](ProfileCallLimit.md) |  | [optional] |
| **daily_call_spend_usd** | [**ProfileCallLimit**](ProfileCallLimit.md) | Billed spend (USD) on outbound calls and calls forwarded to a phone across the team over the rolling 24 hours, in the same unit as &#x60;maxDailyCallSpendUsd&#x60;. | [optional] |
| **daily_forward_spend_usd** | [**ProfileCallLimit**](ProfileCallLimit.md) | Billed spend (USD) on calls forwarded to a phone across the team over the rolling 24 hours. | [optional] |
| **forwarded_minutes_per_hour** | [**ProfileCallLimit**](ProfileCallLimit.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ProfileCallLimitsResponseTeam.new(
  concurrent_calls: null,
  daily_call_spend_usd: null,
  daily_forward_spend_usd: null,
  forwarded_minutes_per_hour: null
)
```

