# Zernio::CalendarAvailability200ResponseDataTimeSlotsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |
| **account_ids** | **Array&lt;String&gt;** | The participants free in this slot. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarAvailability200ResponseDataTimeSlotsInner.new(
  from: null,
  to: null,
  account_ids: null
)
```

