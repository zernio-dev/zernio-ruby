# Zernio::CalendarFreeBusy200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |
| **busy** | [**Array&lt;BusyBlock&gt;**](BusyBlock.md) | The account&#39;s own busy time across the calendars read, merged. Null when the account could not be read. | [optional] |
| **calendars** | [**Array&lt;CalendarFreeBusy200ResponseDataInnerCalendarsInner&gt;**](CalendarFreeBusy200ResponseDataInnerCalendarsInner.md) |  | [optional] |
| **people** | [**Array&lt;CalendarFreeBusy200ResponseDataInnerPeopleInner&gt;**](CalendarFreeBusy200ResponseDataInnerPeopleInner.md) |  | [optional] |
| **error** | [**FreeBusyError**](FreeBusyError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarFreeBusy200ResponseDataInner.new(
  account_id: null,
  from: null,
  to: null,
  busy: null,
  calendars: null,
  people: null,
  error: null
)
```

