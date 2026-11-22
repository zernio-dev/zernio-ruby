# Zernio::PostMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |
| **entity** | **String** |  |  |
| **granularity** | **String** |  |  |
| **from_date** | **String** |  |  |
| **to_date** | **String** |  |  |
| **missing_ids** | **Array&lt;String&gt;** | Ids asked that match no published post the caller can read. |  |
| **total** | **Integer** |  |  |
| **metrics_sample** | [**PostMetricsResponseMetaAllOfMetricsSample**](PostMetricsResponseMetaAllOfMetricsSample.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricsResponseMeta.new(
  stale: null,
  stale_since: null,
  entity: null,
  granularity: null,
  from_date: null,
  to_date: null,
  missing_ids: null,
  total: null,
  metrics_sample: null
)
```

