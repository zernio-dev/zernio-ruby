# Zernio::GetAdsTimeline200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rows** | [**Array&lt;GetAdsTimeline200ResponseRowsInner&gt;**](GetAdsTimeline200ResponseRowsInner.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Present and true only on &#x60;202&#x60; responses: part of the requested date range is still being backfilled from the platform in the background. Retry the same request shortly; it returns 200 once the range is fully ingested. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsTimeline200Response.new(
  rows: null,
  backfill_pending: null
)
```

