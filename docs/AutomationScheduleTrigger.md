# Zernio::AutomationScheduleTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **every** | **String** | Run every interval. Send this or &#x60;times&#x60;, not both. | [optional] |
| **times** | [**Array&lt;AutomationScheduleTriggerTimesInner&gt;**](AutomationScheduleTriggerTimesInner.md) | Set weekly times. Send this or &#x60;every&#x60;, not both. | [optional] |
| **starts_at** | **Time** | Runs from this time on. | [optional] |
| **ends_at** | **Time** | Stops running after this time. Must be after &#x60;startsAt&#x60;. | [optional] |
| **quiet_hours** | [**AutomationScheduleTriggerQuietHours**](AutomationScheduleTriggerQuietHours.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationScheduleTrigger.new(
  type: null,
  every: null,
  times: null,
  starts_at: null,
  ends_at: null,
  quiet_hours: null
)
```

