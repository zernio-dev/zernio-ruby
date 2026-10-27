# Zernio::AdsTimelineResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Meta only. Present and true while historical data is being backfilled. | [optional] |
| **previous_rows** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Only with &#x60;compare&#x3D;previous&#x60;. The daily rows of &#x60;previousRange&#x60;, in the same shape as &#x60;rows&#x60;. | [optional] |
| **previous_range** | [**AdsTimelineResponsePreviousRange**](AdsTimelineResponsePreviousRange.md) |  | [optional] |
| **rows** | [**Array&lt;AdsTimelineResponseRowsInner&gt;**](AdsTimelineResponseRowsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsTimelineResponse.new(
  backfill_pending: null,
  previous_rows: null,
  previous_range: null,
  rows: null
)
```

