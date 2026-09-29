# Zernio::UpdateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **budget_level** | **String** |  | [optional] |
| **status** | **String** | As in PUT /v1/ads/ad-sets/{adSetId}/status: delivery derived from the switches read back. | [optional] |
| **platform_ad_set_status** | **String** | The ad set&#39;s own switch read back from the platform; null when it could not be read. | [optional] |
| **platform_campaign_status** | **String** |  | [optional] |
| **status_read_at** | **Time** |  | [optional] |
| **status_updated** | **Integer** | 1 when the ad set&#39;s switch was written. | [optional] |
| **status_skipped** | **Integer** | 1 when a live read showed it already in the requested state. | [optional] |
| **status_skipped_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** |  | [optional] |
| **roas_average_floor** | **Float** |  | [optional] |
| **platform_specific_data** | **Object** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSet200Response.new(
  budget: null,
  budget_level: null,
  status: null,
  platform_ad_set_status: null,
  platform_campaign_status: null,
  status_read_at: null,
  status_updated: null,
  status_skipped: null,
  status_skipped_reasons: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  platform_specific_data: null
)
```

