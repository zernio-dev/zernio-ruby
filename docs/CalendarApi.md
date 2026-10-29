# Zernio::CalendarApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calendar_availability**](CalendarApi.md#calendar_availability) | **POST** /v1/calendar/availability | Find meeting slots across accounts |
| [**calendar_free_busy**](CalendarApi.md#calendar_free_busy) | **POST** /v1/calendar/free-busy | Busy blocks for one or more accounts |
| [**create_calendar_event**](CalendarApi.md#create_calendar_event) | **POST** /v1/calendar/events | Create an event |
| [**delete_calendar_event**](CalendarApi.md#delete_calendar_event) | **DELETE** /v1/calendar/events/{eventId} | Delete an event |
| [**get_calendar_event**](CalendarApi.md#get_calendar_event) | **GET** /v1/calendar/events/{eventId} | Get an event |
| [**list_calendar_events**](CalendarApi.md#list_calendar_events) | **GET** /v1/calendar/events | List events in a window |
| [**list_calendars**](CalendarApi.md#list_calendars) | **GET** /v1/calendar/calendars | List calendars |
| [**rsvp_calendar_event**](CalendarApi.md#rsvp_calendar_event) | **POST** /v1/calendar/events/{eventId}/rsvp | Respond to an invitation |
| [**update_calendar_event**](CalendarApi.md#update_calendar_event) | **PATCH** /v1/calendar/events/{eventId} | Update an event |


## calendar_availability

> <CalendarAvailability200Response> calendar_availability(calendar_availability_request)

Find meeting slots across accounts

Slots of `durationMinutes` every `intervalMinutes` between `from` and `to` that are free for every participant (`collective`) or for at least one (`max_availability`). Buffers pad the participants' existing meetings. Open hours are evaluated in each participant's own timezone; `defaultOpenHours` applies to participants without their own.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
calendar_availability_request = Zernio::CalendarAvailabilityRequest.new({participants: [Zernio::CalendarAvailabilityRequestParticipantsInner.new({account_id: 'account_id_example'})], from: Time.now, to: Time.now, duration_minutes: 37}) # CalendarAvailabilityRequest | 

begin
  # Find meeting slots across accounts
  result = api_instance.calendar_availability(calendar_availability_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->calendar_availability: #{e}"
end
```

#### Using the calendar_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalendarAvailability200Response>, Integer, Hash)> calendar_availability_with_http_info(calendar_availability_request)

```ruby
begin
  # Find meeting slots across accounts
  data, status_code, headers = api_instance.calendar_availability_with_http_info(calendar_availability_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalendarAvailability200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->calendar_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calendar_availability_request** | [**CalendarAvailabilityRequest**](CalendarAvailabilityRequest.md) |  |  |

### Return type

[**CalendarAvailability200Response**](CalendarAvailability200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calendar_free_busy

> <CalendarFreeBusy200Response> calendar_free_busy(calendar_free_busy_request)

Busy blocks for one or more accounts

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
calendar_free_busy_request = Zernio::CalendarFreeBusyRequest.new({account_ids: ['account_ids_example'], from: Time.now, to: Time.now}) # CalendarFreeBusyRequest | 

begin
  # Busy blocks for one or more accounts
  result = api_instance.calendar_free_busy(calendar_free_busy_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->calendar_free_busy: #{e}"
end
```

#### Using the calendar_free_busy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalendarFreeBusy200Response>, Integer, Hash)> calendar_free_busy_with_http_info(calendar_free_busy_request)

```ruby
begin
  # Busy blocks for one or more accounts
  data, status_code, headers = api_instance.calendar_free_busy_with_http_info(calendar_free_busy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalendarFreeBusy200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->calendar_free_busy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calendar_free_busy_request** | [**CalendarFreeBusyRequest**](CalendarFreeBusyRequest.md) |  |  |

### Return type

[**CalendarFreeBusy200Response**](CalendarFreeBusy200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_calendar_event

> <CreateCalendarEvent201Response> create_calendar_event(create_calendar_event_request)

Create an event

Creates a calendar event. Conferencing and recurrence behave differently on Microsoft and Google accounts.  ### Microsoft accounts  - `conferencing: teams` adds a Teams meeting. The created event comes back with `conferencing: null` when the tenant has no Teams (the EEA Business Basic SKUs ship without it). - `google_meet` is rejected with 400 (`param: conferencing`).  ### Google accounts  - `conferencing: google_meet` adds a Meet link. - `teams` is rejected with 400. - `recurrence` accepts any RRULE Google Calendar supports.  ### Recurrence  `recurrence` takes one RRULE line with FREQ, INTERVAL, COUNT, UNTIL, BYDAY and BYSETPOS. Other parts are rejected with 400 (`param: recurrence`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
create_calendar_event_request = Zernio::CreateCalendarEventRequest.new({account_id: 'account_id_example'}) # CreateCalendarEventRequest | 

begin
  # Create an event
  result = api_instance.create_calendar_event(create_calendar_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->create_calendar_event: #{e}"
end
```

#### Using the create_calendar_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCalendarEvent201Response>, Integer, Hash)> create_calendar_event_with_http_info(create_calendar_event_request)

```ruby
begin
  # Create an event
  data, status_code, headers = api_instance.create_calendar_event_with_http_info(create_calendar_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCalendarEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->create_calendar_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_calendar_event_request** | [**CreateCalendarEventRequest**](CreateCalendarEventRequest.md) |  |  |

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_calendar_event

> <DeleteCalendarEvent200Response> delete_calendar_event(event_id, account_id, opts)

Delete an event

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
event_id = 'event_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  calendar_id: 'calendar_id_example' # String | The calendar holding the event (an id from GET /v1/calendar/calendars). Defaults to the primary calendar.
}

begin
  # Delete an event
  result = api_instance.delete_calendar_event(event_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->delete_calendar_event: #{e}"
end
```

#### Using the delete_calendar_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCalendarEvent200Response>, Integer, Hash)> delete_calendar_event_with_http_info(event_id, account_id, opts)

```ruby
begin
  # Delete an event
  data, status_code, headers = api_instance.delete_calendar_event_with_http_info(event_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCalendarEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->delete_calendar_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **calendar_id** | **String** | The calendar holding the event (an id from GET /v1/calendar/calendars). Defaults to the primary calendar. | [optional] |

### Return type

[**DeleteCalendarEvent200Response**](DeleteCalendarEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_calendar_event

> <CreateCalendarEvent201Response> get_calendar_event(event_id, account_id, opts)

Get an event

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
event_id = 'event_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  calendar_id: 'calendar_id_example', # String | The calendar holding the event (an id from GET /v1/calendar/calendars). Defaults to the primary calendar.
  timezone: 'timezone_example' # String | 
}

begin
  # Get an event
  result = api_instance.get_calendar_event(event_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->get_calendar_event: #{e}"
end
```

#### Using the get_calendar_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCalendarEvent201Response>, Integer, Hash)> get_calendar_event_with_http_info(event_id, account_id, opts)

```ruby
begin
  # Get an event
  data, status_code, headers = api_instance.get_calendar_event_with_http_info(event_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCalendarEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->get_calendar_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **calendar_id** | **String** | The calendar holding the event (an id from GET /v1/calendar/calendars). Defaults to the primary calendar. | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_calendar_events

> <ListCalendarEvents200Response> list_calendar_events(account_id, from, to, opts)

List events in a window

Recurring series are expanded into their occurrences inside the window by default (`expandRecurring=false` lists the masters instead). `title` and `location` are substring matches applied to the fetched page.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
from = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
to = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
opts = {
  calendar_id: 'calendar_id_example', # String | Defaults to the primary calendar.
  title: 'title_example', # String | 
  location: 'location_example', # String | 
  show_cancelled: true, # Boolean | 
  expand_recurring: true, # Boolean | 
  ical_uid: 'ical_uid_example', # String | 
  sort_order: 'asc', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56, # Integer | 
  timezone: 'timezone_example' # String | IANA zone the `start` and `end` offsets are rendered in. Default UTC.
}

begin
  # List events in a window
  result = api_instance.list_calendar_events(account_id, from, to, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->list_calendar_events: #{e}"
end
```

#### Using the list_calendar_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCalendarEvents200Response>, Integer, Hash)> list_calendar_events_with_http_info(account_id, from, to, opts)

```ruby
begin
  # List events in a window
  data, status_code, headers = api_instance.list_calendar_events_with_http_info(account_id, from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCalendarEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->list_calendar_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **from** | **Time** |  |  |
| **to** | **Time** |  |  |
| **calendar_id** | **String** | Defaults to the primary calendar. | [optional] |
| **title** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |
| **show_cancelled** | **Boolean** |  | [optional][default to false] |
| **expand_recurring** | **Boolean** |  | [optional][default to true] |
| **ical_uid** | **String** |  | [optional] |
| **sort_order** | **String** |  | [optional][default to &#39;asc&#39;] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **timezone** | **String** | IANA zone the &#x60;start&#x60; and &#x60;end&#x60; offsets are rendered in. Default UTC. | [optional] |

### Return type

[**ListCalendarEvents200Response**](ListCalendarEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_calendars

> <ListCalendars200Response> list_calendars(account_id)

List calendars

The account must have been connected with `scopes=calendar` (412 `account_scope_missing` otherwise).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # List calendars
  result = api_instance.list_calendars(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->list_calendars: #{e}"
end
```

#### Using the list_calendars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCalendars200Response>, Integer, Hash)> list_calendars_with_http_info(account_id)

```ruby
begin
  # List calendars
  data, status_code, headers = api_instance.list_calendars_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCalendars200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->list_calendars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**ListCalendars200Response**](ListCalendars200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rsvp_calendar_event

> <CreateCalendarEvent201Response> rsvp_calendar_event(event_id, rsvp_calendar_event_request)

Respond to an invitation

Accepts, declines or tentatively accepts on behalf of the mailbox and notifies the organizer.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
event_id = 'event_id_example' # String | 
rsvp_calendar_event_request = Zernio::RsvpCalendarEventRequest.new({account_id: 'account_id_example', status: 'accepted'}) # RsvpCalendarEventRequest | 

begin
  # Respond to an invitation
  result = api_instance.rsvp_calendar_event(event_id, rsvp_calendar_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->rsvp_calendar_event: #{e}"
end
```

#### Using the rsvp_calendar_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCalendarEvent201Response>, Integer, Hash)> rsvp_calendar_event_with_http_info(event_id, rsvp_calendar_event_request)

```ruby
begin
  # Respond to an invitation
  data, status_code, headers = api_instance.rsvp_calendar_event_with_http_info(event_id, rsvp_calendar_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCalendarEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->rsvp_calendar_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **rsvp_calendar_event_request** | [**RsvpCalendarEventRequest**](RsvpCalendarEventRequest.md) |  |  |

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_calendar_event

> <CreateCalendarEvent201Response> update_calendar_event(event_id, update_calendar_event_request)

Update an event

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CalendarApi.new
event_id = 'event_id_example' # String | 
update_calendar_event_request = Zernio::UpdateCalendarEventRequest.new({account_id: 'account_id_example'}) # UpdateCalendarEventRequest | 

begin
  # Update an event
  result = api_instance.update_calendar_event(event_id, update_calendar_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->update_calendar_event: #{e}"
end
```

#### Using the update_calendar_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCalendarEvent201Response>, Integer, Hash)> update_calendar_event_with_http_info(event_id, update_calendar_event_request)

```ruby
begin
  # Update an event
  data, status_code, headers = api_instance.update_calendar_event_with_http_info(event_id, update_calendar_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCalendarEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CalendarApi->update_calendar_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **update_calendar_event_request** | [**UpdateCalendarEventRequest**](UpdateCalendarEventRequest.md) |  |  |

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

