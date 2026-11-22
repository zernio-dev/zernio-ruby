# Zernio::AdMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |
| **from_date** | **String** |  |  |
| **to_date** | **String** |  |  |
| **backfill_pending** | **Boolean** | True while older metrics for the window are still being fetched from the platform. |  |
| **missing_ids** | **Array&lt;String&gt;** | Asked ids that are not ads the caller can see. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdMetricsResponseMeta.new(
  stale: null,
  stale_since: null,
  from_date: null,
  to_date: null,
  backfill_pending: null,
  missing_ids: null
)
```

