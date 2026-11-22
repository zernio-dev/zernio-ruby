# Zernio::AdMetricRowSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend** | **Float** |  |  |
| **impressions** | **Float** |  |  |
| **reach** | **Float** | Deduplicated across days for Meta ads when the platform returns it. |  |
| **clicks** | **Float** |  |  |
| **engagement** | **Float** |  |  |
| **ctr** | **Float** |  |  |
| **cpc** | **Float** |  |  |
| **cpm** | **Float** |  |  |
| **conversions** | **Float** |  |  |
| **all_conversions** | **Float** |  |  |
| **cost_per_conversion** | **Float** |  |  |
| **actions** | **Hash&lt;String, Float&gt;** |  |  |
| **action_values** | **Hash&lt;String, Float&gt;** |  |  |
| **purchase_value** | **Float** |  |  |
| **roas** | **Float** |  |  |
| **cost_per_action** | **Hash&lt;String, Float&gt;** |  |  |
| **outbound_clicks** | **Float** |  |  |
| **outbound_clicks_ctr** | **Float** |  |  |
| **inline_link_clicks** | **Float** |  |  |
| **inline_link_click_ctr** | **Float** |  |  |
| **unique_clicks** | **Float** |  |  |
| **unique_ctr** | **Float** |  |  |
| **funnel** | **Hash&lt;String, Float&gt;** |  |  |
| **engagement_breakdown** | **Hash&lt;String, Float&gt;** |  |  |
| **video_play_actions** | **Float** |  |  |
| **video30_sec_watched_actions** | **Float** |  |  |
| **video_thruplay_watched_actions** | **Float** |  |  |
| **video_p25_watched_actions** | **Float** |  |  |
| **video_p50_watched_actions** | **Float** |  |  |
| **video_p75_watched_actions** | **Float** |  |  |
| **video_p95_watched_actions** | **Float** |  |  |
| **video_p100_watched_actions** | **Float** |  |  |
| **video_avg_time_watched_actions** | **Float** |  |  |
| **video2_sec_watched_actions** | **Float** |  |  |
| **video6_sec_watched_actions** | **Float** |  |  |
| **video6_sec_focused_views** | **Float** |  |  |
| **cost_per_thruplay** | **Float** |  |  |
| **last_synced_at** | **String** |  |  |
| **quality_ranking** | **String** |  | [optional] |
| **engagement_rate_ranking** | **String** |  | [optional] |
| **conversion_rate_ranking** | **String** |  | [optional] |
| **video_total_watch_time** | **Float** | Reading one ad: average watch time times plays, summed over the days. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdMetricRowSummary.new(
  spend: null,
  impressions: null,
  reach: null,
  clicks: null,
  engagement: null,
  ctr: null,
  cpc: null,
  cpm: null,
  conversions: null,
  all_conversions: null,
  cost_per_conversion: null,
  actions: null,
  action_values: null,
  purchase_value: null,
  roas: null,
  cost_per_action: null,
  outbound_clicks: null,
  outbound_clicks_ctr: null,
  inline_link_clicks: null,
  inline_link_click_ctr: null,
  unique_clicks: null,
  unique_ctr: null,
  funnel: null,
  engagement_breakdown: null,
  video_play_actions: null,
  video30_sec_watched_actions: null,
  video_thruplay_watched_actions: null,
  video_p25_watched_actions: null,
  video_p50_watched_actions: null,
  video_p75_watched_actions: null,
  video_p95_watched_actions: null,
  video_p100_watched_actions: null,
  video_avg_time_watched_actions: null,
  video2_sec_watched_actions: null,
  video6_sec_watched_actions: null,
  video6_sec_focused_views: null,
  cost_per_thruplay: null,
  last_synced_at: null,
  quality_ranking: null,
  engagement_rate_ranking: null,
  conversion_rate_ranking: null,
  video_total_watch_time: null
)
```

