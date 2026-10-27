# Zernio::RsvpCalendarEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **calendar_id** | **String** | The calendar holding the event (an id from GET /v1/calendar/calendars). Defaults to the primary calendar. | [optional] |
| **status** | **String** |  |  |
| **comment** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RsvpCalendarEventRequest.new(
  account_id: null,
  calendar_id: null,
  status: null,
  comment: null
)
```

