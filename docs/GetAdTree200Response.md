# Zernio::GetAdTree200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;AdTreeCampaign&gt;**](AdTreeCampaign.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Present and true only on &#x60;202&#x60; responses: part of the requested date range is still being backfilled from the platform in the background. Retry the same request shortly; it returns 200 once the range is fully ingested. | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdTree200Response.new(
  campaigns: null,
  backfill_pending: null,
  pagination: null
)
```

