# Zernio::UsageStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_system** | **String** | Which billing system the account is on. Shape of &#x60;usage&#x60;/&#x60;spend&#x60; differs. | [optional] |
| **plan_name** | **String** |  | [optional] |
| **billing_period** | **String** |  | [optional] |
| **signup_date** | **Time** |  | [optional] |
| **billing_anchor_day** | **Integer** | Day of month (1-31) when the billing cycle resets | [optional] |
| **has_access** | **Boolean** | True if the account is in good standing. False for past-due/unpaid/paused subscriptions. | [optional] |
| **customer_id** | **String** | Stripe customer ID, when present. | [optional] |
| **is_invited_user** | **Boolean** | True if this is a team member; limits/usage reflect the account owner. | [optional] |
| **auto_upgrade_enabled** | **Boolean** | Stripe-only. Always false for Metronome users. | [optional] |
| **limits** | [**UsageStatsLimits**](UsageStatsLimits.md) |  | [optional] |
| **usage** | [**UsageStatsUsage**](UsageStatsUsage.md) |  | [optional] |
| **spend** | [**UsageStatsSpend**](UsageStatsSpend.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageStats.new(
  billing_system: null,
  plan_name: null,
  billing_period: null,
  signup_date: null,
  billing_anchor_day: null,
  has_access: null,
  customer_id: null,
  is_invited_user: null,
  auto_upgrade_enabled: null,
  limits: null,
  usage: null,
  spend: null
)
```

