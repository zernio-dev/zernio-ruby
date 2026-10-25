# Zernio::AdRuleActionOneOf3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Change the daily budget. Google ad groups have no budget of their own, so on Google it needs a campaign-level rule. |  |
| **direction** | **String** |  |  |
| **percent** | **Integer** | Change in percent: up to 100 for an increase, up to 90 for a decrease. |  |
| **limit** | **Float** | The budget never goes above this on an increase, or below it on a decrease, in the ad account currency. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActionOneOf3.new(
  type: null,
  direction: null,
  percent: null,
  limit: null
)
```

