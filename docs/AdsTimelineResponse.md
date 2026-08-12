# Zernio::AdsTimelineResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_pending** | **Boolean** | Present and true while historical data is being backfilled. | [optional] |
| **rows** | [**Array&lt;AdsTimelineResponseRowsInner&gt;**](AdsTimelineResponseRowsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsTimelineResponse.new(
  backfill_pending: null,
  rows: null
)
```

