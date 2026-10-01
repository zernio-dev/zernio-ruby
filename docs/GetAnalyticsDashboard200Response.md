# Zernio::GetAnalyticsDashboard200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_range** | [**GetAnalyticsDashboard200ResponseDateRange**](GetAnalyticsDashboard200ResponseDateRange.md) |  |  |
| **totals** | [**AnalyticsDashboardTotals**](AnalyticsDashboardTotals.md) |  |  |
| **previous_totals** | [**AnalyticsDashboardTotals**](AnalyticsDashboardTotals.md) |  | [optional] |
| **followers** | [**AnalyticsDashboardFollowers**](AnalyticsDashboardFollowers.md) |  |  |
| **previous_followers** | [**AnalyticsDashboardFollowers**](AnalyticsDashboardFollowers.md) |  | [optional] |
| **daily** | [**Array&lt;GetAnalyticsDashboard200ResponseDailyInner&gt;**](GetAnalyticsDashboard200ResponseDailyInner.md) | One entry per day of the window, days without data included as zeros. |  |
| **top_posts** | [**Array&lt;AnalyticsDashboardPost&gt;**](AnalyticsDashboardPost.md) |  |  |
| **recent_posts** | [**Array&lt;AnalyticsDashboardPost&gt;**](AnalyticsDashboardPost.md) |  |  |
| **data_as_of** | **Time** | When the most recently synced account in scope was last synced. Null if none has synced yet. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAnalyticsDashboard200Response.new(
  date_range: null,
  totals: null,
  previous_totals: null,
  followers: null,
  previous_followers: null,
  daily: null,
  top_posts: null,
  recent_posts: null,
  data_as_of: null
)
```

