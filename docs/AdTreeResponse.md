# Zernio::AdTreeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;AdTreeCampaign&gt;**](AdTreeCampaign.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **synced_at** | **Time** | When the most recently synced ad on this page was last read from the platform. Null before the first sync. | [optional] |
| **previous_range** | [**AdTreeResponsePreviousRange**](AdTreeResponsePreviousRange.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Meta only. Present and true while historical data is being backfilled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdTreeResponse.new(
  campaigns: null,
  pagination: null,
  synced_at: null,
  previous_range: null,
  backfill_pending: null
)
```

