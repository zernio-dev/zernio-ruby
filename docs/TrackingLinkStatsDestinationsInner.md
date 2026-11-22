# Zernio::TrackingLinkStatsDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | An https landing page. Each click adds its click id as &#x60;zcid&#x60;, and fills any parameter set to &#x60;{zcid}&#x60;, such as &#x60;sub1&#x3D;{zcid}&#x60; on an affiliate network&#39;s offer link. |  |
| **weight** | **Integer** | This page&#39;s share of clicks, relative to the other destinations&#39; weights. |  |
| **clicks** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingLinkStatsDestinationsInner.new(
  url: null,
  weight: null,
  clicks: null
)
```

