# Zernio::GetDailyMetrics200ResponseTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_count** | **Integer** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** | Sum of per-post reach, not unique accounts. | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **saves** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **engagement** | **Integer** | Likes, comments, shares and saves (interactions). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetDailyMetrics200ResponseTotals.new(
  post_count: null,
  impressions: null,
  reach: null,
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  clicks: null,
  views: null,
  engagement: null
)
```

