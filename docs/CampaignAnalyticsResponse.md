# Zernio::CampaignAnalyticsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Present and true while historical data is being backfilled. | [optional] |
| **campaign** | [**CampaignAnalyticsResponseCampaign**](CampaignAnalyticsResponseCampaign.md) |  | [optional] |
| **analytics** | [**CampaignAnalyticsResponseAnalytics**](CampaignAnalyticsResponseAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignAnalyticsResponse.new(
  backfill_pending: null,
  campaign: null,
  analytics: null
)
```

