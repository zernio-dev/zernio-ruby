# Zernio::CreateCalendarEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **description** | **String** | HTML. | [optional] |
| **location** | **String** |  | [optional] |
| **start** | **String** | ISO date-time, or a date (&#x60;YYYY-MM-DD&#x60;) for all-day events. | [optional] |
| **_end** | **String** | Exclusive for all-day events. | [optional] |
| **all_day** | **Boolean** |  | [optional] |
| **timezone** | **String** | IANA zone the event is scheduled in. Default UTC. | [optional] |
| **participants** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **recurrence** | **Array&lt;String&gt;** | RRULE lines, e.g. &#x60;RRULE:FREQ&#x3D;WEEKLY;BYDAY&#x3D;MO,WE;COUNT&#x3D;10&#x60;. | [optional] |
| **reminders** | [**CalendarEventFieldsReminders**](CalendarEventFieldsReminders.md) |  | [optional] |
| **conferencing** | **String** |  | [optional] |
| **busy** | **Boolean** |  | [optional] |
| **visibility** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **account_id** | **String** |  |  |
| **calendar_id** | **String** | Defaults to the primary calendar. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCalendarEventRequest.new(
  title: null,
  description: null,
  location: null,
  start: null,
  _end: null,
  all_day: null,
  timezone: null,
  participants: null,
  recurrence: null,
  reminders: null,
  conferencing: null,
  busy: null,
  visibility: null,
  metadata: null,
  account_id: null,
  calendar_id: null
)
```

