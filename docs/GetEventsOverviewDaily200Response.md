# Zernio::GetEventsOverviewDaily200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | **String** |  | [optional] |
| **totals** | [**GetEventsOverviewDaily200ResponseTotals**](GetEventsOverviewDaily200ResponseTotals.md) |  | [optional] |
| **days** | [**Array&lt;GetEventsOverviewDaily200ResponseDaysInner&gt;**](GetEventsOverviewDaily200ResponseDaysInner.md) | Every day of the period, oldest first, zero where nothing happened. | [optional] |
| **event_names** | **Array&lt;String&gt;** | The event names stored in the period, most events first. | [optional] |
| **platforms** | [**Array&lt;GetEventsOverviewDaily200ResponsePlatformsInner&gt;**](GetEventsOverviewDaily200ResponsePlatformsInner.md) | Each platform events were sent to in the period, most sends first. | [optional] |
| **pixel_missed** | [**Array&lt;GetEventsOverviewDaily200ResponsePixelMissedInner&gt;**](GetEventsOverviewDaily200ResponsePixelMissedInner.md) | For each platform sent to in the period, the website conversions of people who allowed ad cookies (bots left out) and how many its browser pixel missed, which Zernio sent from its server. Most missed first; &#x60;null&#x60; without a tracked website in scope. | [optional] |
| **breakdown** | [**GetEventsOverviewDaily200ResponseBreakdown**](GetEventsOverviewDaily200ResponseBreakdown.md) |  | [optional] |
| **previous** | [**GetEventsOverviewDaily200ResponsePrevious**](GetEventsOverviewDaily200ResponsePrevious.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200Response.new(
  period: null,
  totals: null,
  days: null,
  event_names: null,
  platforms: null,
  pixel_missed: null,
  breakdown: null,
  previous: null
)
```

