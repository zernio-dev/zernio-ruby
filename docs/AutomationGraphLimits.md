# Zernio::AutomationGraphLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cooldown** | **String** |  | [optional] |
| **max_changes_per_day** | **Integer** |  | [optional] |
| **max_changes_per_object** | **Integer** |  | [optional] |
| **stop_on** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationGraphLimits.new(
  cooldown: null,
  max_changes_per_day: null,
  max_changes_per_object: null,
  stop_on: null
)
```

