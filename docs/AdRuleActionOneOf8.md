# Zernio::AdRuleActionOneOf8

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Set the daily budget to an exact amount, such as a reset every midnight. Same level rules as the percent change. |  |
| **amount** | **Float** | The daily budget to set, in the ad account currency. An object already at it is skipped with &#x60;already_at_amount&#x60;. |  |
| **max_changes_per_day** | **Integer** | At most this many objects changed in any 24 hours, across runs. Matches over the limit are skipped with &#x60;daily_limit_reached&#x60; and tried again later. | [optional] |
| **max_changes_per_object** | **Integer** | At most this many changes to one object by this rule, counted over the last 400 days. An object at the limit is left alone like one in cooldown. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActionOneOf8.new(
  type: null,
  amount: null,
  max_changes_per_day: null,
  max_changes_per_object: null
)
```

