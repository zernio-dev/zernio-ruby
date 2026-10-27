# Zernio::CalendarFreeBusy200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |
| **busy** | [**Array&lt;BusyBlock&gt;**](BusyBlock.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarFreeBusy200ResponseDataInner.new(
  account_id: null,
  from: null,
  to: null,
  busy: null
)
```

