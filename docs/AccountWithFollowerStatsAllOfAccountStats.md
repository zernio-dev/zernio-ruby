# Late::AccountWithFollowerStatsAllOfAccountStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **following_count** | **Float** | Number of accounts being followed | [optional] |
| **media_count** | **Float** | Total media posts (Instagram) | [optional] |
| **video_count** | **Float** | Total videos (YouTube | [optional] |
| **tweet_count** | **Float** | Total tweets (X/Twitter) | [optional] |
| **posts_count** | **Float** | Total posts (Bluesky) | [optional] |
| **pin_count** | **Float** | Total pins (Pinterest) | [optional] |
| **total_views** | **Float** | Total channel views (YouTube) | [optional] |
| **likes_count** | **Float** | Total likes received (TikTok) | [optional] |
| **monthly_views** | **Float** | Monthly profile views (Pinterest) | [optional] |
| **listed_count** | **Float** | Lists the user appears on (X/Twitter) | [optional] |
| **board_count** | **Float** | Total boards (Pinterest) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AccountWithFollowerStatsAllOfAccountStats.new(
  following_count: null,
  media_count: null,
  video_count: null,
  tweet_count: null,
  posts_count: null,
  pin_count: null,
  total_views: null,
  likes_count: null,
  monthly_views: null,
  listed_count: null,
  board_count: null
)
```

