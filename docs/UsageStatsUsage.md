# Zernio::UsageStatsUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uploads** | **Integer** | Stripe users only. Uploads consumed in the current period. | [optional] |
| **profiles** | **Integer** | Stripe users only. Profiles currently owned. | [optional] |
| **last_reset** | **Time** | Stripe users only. | [optional] |
| **connected_accounts** | **Integer** | Metronome users only. Accounts currently connected across the team. | [optional] |
| **x_api_calls** | [**UsageStatsUsageXApiCalls**](UsageStatsUsageXApiCalls.md) |  | [optional] |
| **x_api_calls_by_operation** | **Hash&lt;String, Integer&gt;** | Metronome users only. Per-operation X API call counts keyed by operation (e.g. &#x60;posts_read&#x60;, &#x60;content_create&#x60;). Resolve each key to price and metadata via &#x60;GET /v1/billing/x-pricing&#x60;.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageStatsUsage.new(
  uploads: null,
  profiles: null,
  last_reset: null,
  connected_accounts: null,
  x_api_calls: null,
  x_api_calls_by_operation: {posts_read&#x3D;42, content_create&#x3D;7, dm_interaction_create&#x3D;1}
)
```

