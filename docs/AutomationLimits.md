# Zernio::AutomationLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cooldown** | **String** | How long an object is left alone after the rule acts on it. Whole minutes, up to &#x60;30d&#x60;. | [optional][default to &#39;1d&#39;] |
| **max_changes_per_day** | **Integer** | Most changes across the last 24 hours. Needs an &#x60;ads.*&#x60; step. | [optional] |
| **max_changes_per_object** | **Integer** | Most times the rule may change one object, counted over the last 400 days. Needs an &#x60;ads.*&#x60; step. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationLimits.new(
  cooldown: 3d,
  max_changes_per_day: null,
  max_changes_per_object: null
)
```

