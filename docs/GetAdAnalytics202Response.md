# Zernio::GetAdAnalytics202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |
| **ad** | [**AdAnalyticsResponseAd**](AdAnalyticsResponseAd.md) |  | [optional] |
| **analytics** | [**CampaignAnalyticsResponseAnalytics**](CampaignAnalyticsResponseAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAnalytics202Response.new(
  backfill_pending: null,
  ad: null,
  analytics: null
)
```

