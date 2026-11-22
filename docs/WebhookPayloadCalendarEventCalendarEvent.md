# Zernio::WebhookPayloadCalendarEventCalendarEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **change_type** | **String** |  | [optional] |
| **calendar_id** | **String** | The calendar holding the event, to pass as &#x60;calendarId&#x60; when reading it: &#x60;primary&#x60; for the user&#39;s main calendar, else the Google calendar id. Null when it is not known, as for a deleted Outlook event. | [optional] |
| **master_event_id** | **String** | The series this event belongs to, when it is an occurrence or exception. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCalendarEventCalendarEvent.new(
  id: null,
  change_type: null,
  calendar_id: null,
  master_event_id: null
)
```

