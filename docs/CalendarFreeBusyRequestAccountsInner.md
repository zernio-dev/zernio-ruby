# Zernio::CalendarFreeBusyRequestAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **calendar_ids** | **Array&lt;String&gt;** | Calendars to read (ids from GET /v1/calendar/calendars, or &#x60;primary&#x60;). | [optional] |
| **emails** | **Array&lt;String&gt;** | Coworkers whose free-busy this account can see, usually people in the same organization. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarFreeBusyRequestAccountsInner.new(
  account_id: null,
  calendar_ids: null,
  emails: null
)
```

