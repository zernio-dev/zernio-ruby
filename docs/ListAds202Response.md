# Zernio::ListAds202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAds202Response.new(
  ads: null,
  pagination: null,
  backfill_pending: null
)
```

