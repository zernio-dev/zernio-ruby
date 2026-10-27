# Zernio::CalendarEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **calendar_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |
| **start** | **String** | ISO date-time with the rendered offset, or a date for all-day events. | [optional] |
| **_end** | **String** |  | [optional] |
| **all_day** | **Boolean** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **participants** | [**Array&lt;CalendarEventParticipantsInner&gt;**](CalendarEventParticipantsInner.md) |  | [optional] |
| **organizer** | [**EmailAddress**](EmailAddress.md) |  | [optional] |
| **recurrence** | **Array&lt;String&gt;** |  | [optional] |
| **reminders** | [**CalendarEventReminders**](CalendarEventReminders.md) |  | [optional] |
| **conferencing** | [**CalendarEventConferencing**](CalendarEventConferencing.md) |  | [optional] |
| **busy** | **Boolean** |  | [optional] |
| **visibility** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **ical_uid** | **String** |  | [optional] |
| **master_event_id** | **String** |  | [optional] |
| **html_link** | **String** |  | [optional] |
| **read_only** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarEvent.new(
  id: null,
  account_id: null,
  provider: null,
  calendar_id: null,
  title: null,
  description: null,
  location: null,
  start: null,
  _end: null,
  all_day: null,
  timezone: null,
  participants: null,
  organizer: null,
  recurrence: null,
  reminders: null,
  conferencing: null,
  busy: null,
  visibility: null,
  status: null,
  ical_uid: null,
  master_event_id: null,
  html_link: null,
  read_only: null,
  metadata: null,
  created_at: null,
  updated_at: null
)
```

