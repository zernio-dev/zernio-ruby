# Zernio::YouTubeDailyViewsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **video_id** | **String** | The YouTube video ID | [optional] |
| **duration_seconds** | **Integer** | Video length in seconds (from YouTube contentDetails.duration) | [optional] |
| **date_range** | [**YouTubeDailyViewsResponseDateRange**](YouTubeDailyViewsResponseDateRange.md) |  | [optional] |
| **total_views** | **Integer** | Sum of views across all days in the range | [optional] |
| **daily_views** | [**Array&lt;YouTubeDailyViewsResponseDailyViewsInner&gt;**](YouTubeDailyViewsResponseDailyViewsInner.md) |  | [optional] |
| **last_synced_at** | **Time** | When the data was last synced from YouTube | [optional] |
| **scope_status** | [**YouTubeDailyViewsResponseScopeStatus**](YouTubeDailyViewsResponseScopeStatus.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::YouTubeDailyViewsResponse.new(
  success: true,
  video_id: null,
  duration_seconds: null,
  date_range: null,
  total_views: null,
  daily_views: null,
  last_synced_at: null,
  scope_status: null
)
```

