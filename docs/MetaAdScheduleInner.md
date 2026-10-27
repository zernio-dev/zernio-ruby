# Zernio::MetaAdScheduleInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day_of_week** | **String** |  |  |
| **start_hour** | **Integer** |  |  |
| **end_hour** | **Integer** | Must be after startHour. 24 is midnight at the end of the day. |  |
| **timezone_type** | **String** | Meta &#x60;timezone_type&#x60;: USER runs the hours in each viewer&#39;s time zone, ADVERTISER in the ad account time zone. | [optional][default to &#39;USER&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaAdScheduleInner.new(
  day_of_week: null,
  start_hour: null,
  end_hour: null,
  timezone_type: null
)
```

