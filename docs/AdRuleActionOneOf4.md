# Zernio::AdRuleActionOneOf4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Move the bid cap or cost cap of a Meta ad set, in the ad account currency. Ad set rules on Meta only. An ad set without a cap is skipped with &#x60;no_bid_cap&#x60;. |  |
| **amount** | **Float** | The cap to set. | [optional] |
| **direction** | **String** |  | [optional] |
| **percent** | **Integer** | Step size. A decrease is at most 90. | [optional] |
| **limit** | **Float** | The cap never goes above this on an increase, or below it on a decrease. | [optional] |
| **max_changes_per_day** | **Integer** | At most this many objects changed in any 24 hours, across runs. Matches over the limit are skipped with &#x60;daily_limit_reached&#x60; and tried again later. | [optional] |
| **max_changes_per_object** | **Integer** | At most this many changes to one object by this rule, counted over the last 400 days. An object at the limit is left alone like one in cooldown. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActionOneOf4.new(
  type: null,
  amount: null,
  direction: null,
  percent: null,
  limit: null,
  max_changes_per_day: null,
  max_changes_per_object: null
)
```

