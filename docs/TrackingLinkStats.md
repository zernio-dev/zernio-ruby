# Zernio::TrackingLinkStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** |  |  |
| **clicks** | **Integer** | Human clicks in the range. |  |
| **conversions** | **Integer** | Conversions still counted whose time falls in the range. |  |
| **conversion_rate** | **Float** | Conversions per click. Null without clicks. |  |
| **revenue** | [**Array&lt;TrackingLinkStatsRevenueInner&gt;**](TrackingLinkStatsRevenueInner.md) | The conversions&#39; value summed per currency, most conversions first. |  |
| **destinations** | [**Array&lt;TrackingLinkStatsDestinationsInner&gt;**](TrackingLinkStatsDestinationsInner.md) | The link&#39;s current destinations, each with its clicks in the range. |  |
| **former_destination_clicks** | **Integer** | Clicks on destinations the link no longer has (an edited or removed URL). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingLinkStats.new(
  from_date: null,
  to_date: null,
  clicks: null,
  conversions: null,
  conversion_rate: null,
  revenue: null,
  destinations: null,
  former_destination_clicks: null
)
```

