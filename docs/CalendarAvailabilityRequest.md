# Zernio::CalendarAvailabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participants** | [**Array&lt;CalendarAvailabilityRequestParticipantsInner&gt;**](CalendarAvailabilityRequestParticipantsInner.md) |  |  |
| **from** | **Time** |  |  |
| **to** | **Time** |  |  |
| **duration_minutes** | **Integer** |  |  |
| **interval_minutes** | **Integer** |  | [optional][default to 30] |
| **round_to** | **Integer** | Rounds the first candidate slot up to this many minutes. | [optional] |
| **buffer** | [**CalendarAvailabilityRequestBuffer**](CalendarAvailabilityRequestBuffer.md) |  | [optional] |
| **default_open_hours** | [**Array&lt;OpenHoursInner&gt;**](OpenHoursInner.md) |  | [optional] |
| **method** | **String** |  | [optional][default to &#39;collective&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarAvailabilityRequest.new(
  participants: null,
  from: null,
  to: null,
  duration_minutes: null,
  interval_minutes: null,
  round_to: null,
  buffer: null,
  default_open_hours: null,
  method: null
)
```

