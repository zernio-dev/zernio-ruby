# Zernio::GetCampaignAnalytics200ResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **daily** | [**Array&lt;GetCampaignAnalytics200ResponseAnalyticsDailyInner&gt;**](GetCampaignAnalytics200ResponseAnalyticsDailyInner.md) |  | [optional] |
| **breakdowns** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignAnalytics200ResponseAnalytics.new(
  summary: null,
  daily: null,
  breakdowns: null
)
```

