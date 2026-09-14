# Zernio::AdScheduleWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **criterion_id** | **String** | Google campaign criterion id. Changes whenever the window is rewritten, because Google cannot edit a schedule in place. | [optional] |
| **resource_name** | **String** |  | [optional] |
| **day_of_week** | **String** |  | [optional] |
| **start_hour** | **Integer** |  | [optional] |
| **start_minute** | **Integer** |  | [optional] |
| **end_hour** | **Integer** | 24 means midnight at the end of the day. | [optional] |
| **end_minute** | **Integer** |  | [optional] |
| **bid_modifier** | **Float** | Bid adjustment for this window, 0.1-10.0. Null when the window runs at the campaign bid. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdScheduleWindow.new(
  criterion_id: null,
  resource_name: null,
  day_of_week: null,
  start_hour: null,
  start_minute: null,
  end_hour: null,
  end_minute: null,
  bid_modifier: null
)
```

