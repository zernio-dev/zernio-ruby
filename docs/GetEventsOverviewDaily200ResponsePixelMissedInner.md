# Zernio::GetEventsOverviewDaily200ResponsePixelMissedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **conversions** | **Integer** |  | [optional] |
| **missed** | **Integer** |  | [optional] |
| **days** | [**Array&lt;GetEventsOverviewDaily200ResponsePixelMissedInnerDaysInner&gt;**](GetEventsOverviewDaily200ResponsePixelMissedInnerDaysInner.md) | Every day of the period, oldest first. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200ResponsePixelMissedInner.new(
  platform: null,
  conversions: null,
  missed: null,
  days: null
)
```

