# Zernio::CalendarFreeBusy200ResponseDataInnerPeopleInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **busy** | [**Array&lt;BusyBlock&gt;**](BusyBlock.md) |  | [optional] |
| **error** | [**FreeBusyError**](FreeBusyError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarFreeBusy200ResponseDataInnerPeopleInner.new(
  email: null,
  busy: null,
  error: null
)
```

