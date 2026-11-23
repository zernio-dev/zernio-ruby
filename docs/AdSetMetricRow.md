# Zernio::AdSetMetricRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **ad_set_id** | **String** |  |  |
| **name** | **String** | The ad set name. null before its first sync. |  |
| **currency** | **String** | The ad account currency every money metric of this ad set is in. Ad sets of different ad accounts are never summed together. |  |
| **metrics** | [**AdMetrics**](AdMetrics.md) | Only the asked metrics, summed over every ad of the ad set with rates recomputed from the sums. reach is deduplicated across the range for Meta and TikTok when the platform returns it. |  |
| **daily** | [**Array&lt;CampaignMetricRowDailyInner&gt;**](CampaignMetricRowDailyInner.md) | With granularity&#x3D;day, one point per day with delivery, each carrying date and the asked metrics. | [optional] |
| **last_synced_at** | **String** | When the newest daily row of the ad set was synced. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdSetMetricRow.new(
  platform: null,
  ad_account_id: null,
  campaign_id: null,
  ad_set_id: null,
  name: null,
  currency: null,
  metrics: null,
  daily: null,
  last_synced_at: null
)
```

