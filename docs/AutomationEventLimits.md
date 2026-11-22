# Zernio::AutomationEventLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cooldown** | **String** | How long the same post or account is left alone after the automation acts on it, rounded up to whole minutes. None by default. | [optional] |
| **max_changes_per_day** | **Integer** | Most runs across the last 24 hours. Required, up to 20, with a boost step. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationEventLimits.new(
  cooldown: 1h,
  max_changes_per_day: null
)
```

