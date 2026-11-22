# Zernio::GetEventsOverviewDaily200ResponseBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;GetEventsOverviewDaily200ResponseBreakdownEventsInner&gt;**](GetEventsOverviewDaily200ResponseBreakdownEventsInner.md) | Conversions per event name, most first. | [optional] |
| **sources** | [**Array&lt;GetEventsOverviewDaily200ResponseBreakdownSourcesInner&gt;**](GetEventsOverviewDaily200ResponseBreakdownSourcesInner.md) | Conversions per source (&#x60;web&#x60;, &#x60;api&#x60;, &#x60;stripe&#x60;...), most first. | [optional] |
| **campaigns** | [**Array&lt;GetEventsOverviewDaily200ResponseBreakdownCampaignsInner&gt;**](GetEventsOverviewDaily200ResponseBreakdownCampaignsInner.md) | The counted conversions (the events that count as campaign results) per matched campaign, most first. Those not tied to one are rows with a &#x60;reason&#x60;: &#x60;not_from_an_ad&#x60;, or &#x60;campaign_not_found&#x60; for an ad Zernio could not match. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200ResponseBreakdown.new(
  events: null,
  sources: null,
  campaigns: null
)
```

