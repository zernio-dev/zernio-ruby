# Zernio::GetAdTree202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;AdTreeCampaign&gt;**](AdTreeCampaign.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdTree202Response.new(
  campaigns: null,
  pagination: null,
  backfill_pending: null
)
```

