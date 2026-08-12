# Zernio::AdAnalyticsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Present and true while historical data is being backfilled. | [optional] |
| **ad** | [**AdAnalyticsResponseAd**](AdAnalyticsResponseAd.md) |  | [optional] |
| **analytics** | [**CampaignAnalyticsResponseAnalytics**](CampaignAnalyticsResponseAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdAnalyticsResponse.new(
  backfill_pending: null,
  ad: null,
  analytics: null
)
```

