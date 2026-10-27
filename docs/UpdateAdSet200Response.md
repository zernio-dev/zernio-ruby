# Zernio::UpdateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **budget_level** | **String** |  | [optional] |
| **status** | **String** | As in PUT /v1/ads/ad-sets/{adSetId}/status: delivery derived from the switches read back. | [optional] |
| **platform_ad_set_status** | **String** | The ad set&#39;s status read back from the platform, as in PUT /v1/ads/ad-sets/{adSetId}/status (Meta and Reddit return the ad set&#39;s effective_status); null when it could not be read. | [optional] |
| **platform_campaign_status** | **String** |  | [optional] |
| **status_read_at** | **Time** |  | [optional] |
| **status_updated** | **Integer** | 1 when the ad set&#39;s switch was written. | [optional] |
| **status_skipped** | **Integer** | 1 when a live read showed it already in the requested state. | [optional] |
| **status_skipped_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** |  | [optional] |
| **roas_average_floor** | **Float** |  | [optional] |
| **platform_specific_data** | **Object** |  | [optional] |
| **targeting** | **Object** | Present when &#x60;placements&#x60; or &#x60;targeting&#x60; was sent. The ad set&#39;s full targeting as written, in the platform&#39;s own vocabulary (Meta or Reddit snake_case). Stored as the ad set&#39;s &#x60;targeting&#x60;. Meta stores the same object on its ads; Reddit stores it on its ads in the create vocabulary (&#x60;countries&#x60;, &#x60;communities&#x60;, ...), as GET /v1/ads/ad-sets/{adSetId}/targeting returns it. | [optional] |
| **start_date** | **String** | Reddit: the start_time written, a UTC instant. Present when &#x60;startDate&#x60; was sent. | [optional] |
| **end_date** | **String** | Reddit: the end_time written, a UTC instant, or null when the end date was removed. Present when &#x60;endDate&#x60; was sent. | [optional] |

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
  platform_specific_data: null,
  targeting: null,
  start_date: null,
  end_date: null
)
```

