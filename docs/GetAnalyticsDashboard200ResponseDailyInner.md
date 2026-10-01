# Zernio::GetAnalyticsDashboard200ResponseDailyInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **engagement** | **Integer** | Likes, comments, shares and saves received that day. | [optional] |
| **views** | **Integer** |  | [optional] |
| **followers_gained** | **Integer** | Net follower change against the previous snapshot. Can be negative. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAnalyticsDashboard200ResponseDailyInner.new(
  date: null,
  impressions: null,
  reach: null,
  engagement: null,
  views: null,
  followers_gained: null
)
```

