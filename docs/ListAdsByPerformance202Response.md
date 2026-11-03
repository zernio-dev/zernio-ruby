# Zernio::ListAdsByPerformance202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ads** | [**Array&lt;AdsPerformanceResponseAdsInner&gt;**](AdsPerformanceResponseAdsInner.md) |  |  |
| **backfill_pending** | **Boolean** | Always true on this response. Retry until the request returns 200. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsByPerformance202Response.new(
  ads: null,
  backfill_pending: null
)
```

