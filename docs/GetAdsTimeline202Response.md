# Zernio::GetAdsTimeline202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |
| **rows** | [**Array&lt;AdsTimelineResponseRowsInner&gt;**](AdsTimelineResponseRowsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsTimeline202Response.new(
  backfill_pending: null,
  rows: null
)
```

