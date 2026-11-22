# Zernio::ListInstagramStories200ResponseDataInnerMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **views** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **replies** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **follows** | **Integer** |  | [optional] |
| **profile_visits** | **Integer** |  | [optional] |
| **link_clicks** | **Integer** | Taps on links in the story (the link sticker). Facebook Login accounts only; always 0 for Instagram Login accounts. Taps on other stickers (mentions, hashtags, locations) are not reported by Meta. | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInstagramStories200ResponseDataInnerMetrics.new(
  views: null,
  reach: null,
  replies: null,
  shares: null,
  follows: null,
  profile_visits: null,
  link_clicks: null,
  last_updated: null
)
```

