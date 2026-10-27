# Zernio::GetAdsTimeline202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Always true on this response. Part of the requested range is still being backfilled; retry until the request returns 200. |  |
| **previous_rows** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Only with &#x60;compare&#x3D;previous&#x60;. The daily rows of &#x60;previousRange&#x60;, in the same shape as &#x60;rows&#x60;. | [optional] |
| **previous_range** | [**AdsTimelineResponsePreviousRange**](AdsTimelineResponsePreviousRange.md) |  | [optional] |
| **rows** | [**Array&lt;AdsTimelineResponseRowsInner&gt;**](AdsTimelineResponseRowsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsTimeline202Response.new(
  backfill_pending: null,
  previous_rows: null,
  previous_range: null,
  rows: null
)
```

