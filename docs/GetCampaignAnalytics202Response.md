# Zernio::GetCampaignAnalytics202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** |  |  |
| **campaign** | [**CampaignAnalyticsResponseCampaign**](CampaignAnalyticsResponseCampaign.md) |  | [optional] |
| **analytics** | [**CampaignAnalyticsResponseAnalytics**](CampaignAnalyticsResponseAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignAnalytics202Response.new(
  backfill_pending: null,
  campaign: null,
  analytics: null
)
```

