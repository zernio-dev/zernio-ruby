# Zernio::GohighlevelFunnelTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** | The Zernio tracking site behind the tag (&#x60;getTrackingSite&#x60;). |  |
| **snippet** | **String** | The line to paste into each funnel&#39;s and website&#39;s tracking code (Header). |  |
| **live** | **Boolean** | The tag has sent its first visit. |  |
| **domains** | **Array&lt;String&gt;** | The domains whose visits are tied to contacts. A page checked with &#x60;verifyGohighlevelFunnelTracking&#x60; adds its domain. |  |
| **funnels** | [**Array&lt;GohighlevelFunnelTrackingFunnelsInner&gt;**](GohighlevelFunnelTrackingFunnelsInner.md) |  |  |
| **verified** | [**GohighlevelFunnelTrackingVerified**](GohighlevelFunnelTrackingVerified.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelFunnelTracking.new(
  site_id: null,
  snippet: null,
  live: null,
  domains: null,
  funnels: null,
  verified: null
)
```

