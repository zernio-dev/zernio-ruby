# Zernio::CampaignMetricRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **results** | **Hash&lt;String, Float&gt;** | Each uploaded result metric summed over the range, by metric key. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignMetricRow.new(
  platform: null,
  ad_account_id: null,
  campaign_id: null,
  results: null
)
```

