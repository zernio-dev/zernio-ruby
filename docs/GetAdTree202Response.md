# Zernio::GetAdTree202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;AdTreeCampaign&gt;**](AdTreeCampaign.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **synced_at** | **Time** | When the most recently synced ad on this page was last read from the platform. Null before the first sync. | [optional] |
| **previous_range** | [**AdTreeResponsePreviousRange**](AdTreeResponsePreviousRange.md) |  | [optional] |
| **result_metrics** | [**Array&lt;CampaignResultMetric&gt;**](CampaignResultMetric.md) | Only with &#x60;results&#x3D;true&#x60;. Your metrics and formulas, to label each campaign&#39;s &#x60;results&#x60;. | [optional] |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdTree202Response.new(
  campaigns: null,
  pagination: null,
  synced_at: null,
  previous_range: null,
  result_metrics: null,
  backfill_pending: null
)
```

