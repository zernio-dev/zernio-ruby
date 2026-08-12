# Zernio::AdsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Present and true while historical data is being backfilled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsListResponse.new(
  ads: null,
  pagination: null,
  backfill_pending: null
)
```

