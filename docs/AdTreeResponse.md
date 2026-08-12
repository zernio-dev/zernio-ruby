# Zernio::AdTreeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;AdTreeCampaign&gt;**](AdTreeCampaign.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Present and true while historical data is being backfilled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdTreeResponse.new(
  campaigns: null,
  pagination: null,
  backfill_pending: null
)
```

