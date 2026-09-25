# Zernio::OnSmsRegistrationStatusUpdatedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **registration** | [**OnSmsRegistrationStatusUpdatedRequestRegistration**](OnSmsRegistrationStatusUpdatedRequestRegistration.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** | The carriers&#39; decline reason, on rejected. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnSmsRegistrationStatusUpdatedRequest.new(
  id: null,
  event: null,
  timestamp: null,
  registration: null,
  status: null,
  reason: null
)
```

