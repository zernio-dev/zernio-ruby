# Zernio::GetCampaignAdSchedule200ResponsePerformanceByDayOfWeekInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day_of_week** | **String** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **cost** | **Float** | Account currency, not USD-normalized. | [optional] |
| **conversions** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignAdSchedule200ResponsePerformanceByDayOfWeekInner.new(
  day_of_week: null,
  impressions: null,
  clicks: null,
  cost: null,
  conversions: null
)
```

