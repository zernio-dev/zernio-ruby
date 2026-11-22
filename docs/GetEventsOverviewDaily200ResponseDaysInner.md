# Zernio::GetEventsOverviewDaily200ResponseDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | **Date** |  | [optional] |
| **conversions** | **Integer** | Stored events that occurred that day. | [optional] |
| **sent** | **Integer** | Events first sent to a destination that day. | [optional] |
| **accepted** | **Integer** | Those the platform accepted. | [optional] |
| **value** | **Float** | The day&#39;s value, in the period&#39;s &#x60;totals.currency&#x60;. | [optional] |
| **value_sent** | **Float** | Of that value, the conversions a platform accepted. | [optional] |
| **from_ads** | **Integer** | Counted events that came from an ad, as in &#x60;totals.fromAds&#x60;. | [optional] |
| **matched** | **Integer** | Events matched to an ad campaign. | [optional] |
| **by_event** | **Hash&lt;String, Integer&gt;** | The day&#39;s stored events per event name. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200ResponseDaysInner.new(
  day: null,
  conversions: null,
  sent: null,
  accepted: null,
  value: null,
  value_sent: null,
  from_ads: null,
  matched: null,
  by_event: null
)
```

