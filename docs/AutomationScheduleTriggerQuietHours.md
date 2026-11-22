# Zernio::AutomationScheduleTriggerQuietHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  |  |
| **to** | **String** | Differs from &#x60;from&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationScheduleTriggerQuietHours.new(
  from: 22:00,
  to: 06:00
)
```

