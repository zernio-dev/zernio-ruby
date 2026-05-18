# Zernio::GetInstagramStoryInsights200ResponseDataMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **views** | **Integer** | Total story plays. Replaces deprecated &#39;impressions&#39; for media created after 2024-07-02. |  |
| **reach** | **Integer** | Unique accounts that saw the story. |  |
| **replies** | **Integer** | DMs sent in reply to the story. |  |
| **shares** | **Integer** |  |  |
| **navigation** | **Integer** | Total nav actions (tapsForward + tapsBack + exits + swipesForward). |  |
| **taps_forward** | **Integer** | Tapped right to next slide of SAME story. |  |
| **taps_back** | **Integer** | Tapped left to previous slide. |  |
| **exits** | **Integer** | Closed Stories interface entirely. |  |
| **swipes_forward** | **Integer** | Swiped left to next account&#39;s story. |  |
| **profile_visits** | **Integer** |  |  |
| **follows** | **Integer** |  |  |
| **reposts** | **Integer** |  |  |
| **total_interactions** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInstagramStoryInsights200ResponseDataMetrics.new(
  views: null,
  reach: null,
  replies: null,
  shares: null,
  navigation: null,
  taps_forward: null,
  taps_back: null,
  exits: null,
  swipes_forward: null,
  profile_visits: null,
  follows: null,
  reposts: null,
  total_interactions: null
)
```

