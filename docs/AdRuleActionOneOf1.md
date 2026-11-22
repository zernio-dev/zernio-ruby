# Zernio::AdRuleActionOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Pause the campaign, ad set, ad or Google keyword. |  |
| **max_changes_per_day** | **Integer** | At most this many objects changed in any 24 hours, across runs. Matches over the limit are skipped with &#x60;daily_limit_reached&#x60; and tried again later. | [optional] |
| **max_changes_per_object** | **Integer** | At most this many changes to one object by this rule, counted over the last 400 days. An object at the limit is left alone like one in cooldown. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActionOneOf1.new(
  type: null,
  max_changes_per_day: null,
  max_changes_per_object: null
)
```

