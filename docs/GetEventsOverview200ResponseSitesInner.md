# Zernio::GetEventsOverview200ResponseSitesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  | [optional] |
| **profile_id** | **String** | The profile the site belongs to. | [optional] |
| **hits_today** | **Integer** | Hits today. | [optional] |
| **last_active_on** | **Date** | The last day in the past 7 with a hit. &#x60;null&#x60; when none. | [optional] |
| **event_names_last_week** | **Array&lt;String&gt;** | Each event name people (not bots) sent the site in the last 7 days, sorted. Names the site sends that are neither standard nor in its &#x60;customEvents&#x60; are left out. | [optional] |
| **totals** | [**GetEventsOverview200ResponseSitesInnerTotals**](GetEventsOverview200ResponseSitesInnerTotals.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponseSitesInner.new(
  site_id: null,
  profile_id: null,
  hits_today: null,
  last_active_on: null,
  event_names_last_week: null,
  totals: null
)
```

