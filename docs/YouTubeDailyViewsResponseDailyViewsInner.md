# Zernio::YouTubeDailyViewsResponseDailyViewsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **estimated_minutes_watched** | **Float** |  | [optional] |
| **average_view_duration** | **Float** | Average view duration in seconds | [optional] |
| **average_view_percentage** | **Float** | Average percentage of the video watched per view. Can exceed 100 on Shorts (looping rewatches), so do not clamp it client-side. | [optional] |
| **subscribers_gained** | **Integer** |  | [optional] |
| **subscribers_lost** | **Integer** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::YouTubeDailyViewsResponseDailyViewsInner.new(
  date: null,
  views: null,
  estimated_minutes_watched: null,
  average_view_duration: null,
  average_view_percentage: null,
  subscribers_gained: null,
  subscribers_lost: null,
  likes: null,
  comments: null,
  shares: null
)
```

