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
| **sync_requested_account_ids** | **Array&lt;String&gt;** | On a list of posts: the accounts this read queued for a fresh sync, because they were never synced or their stored numbers are over 90 minutes old. The answer holds the stored numbers; the synced ones arrive within minutes. | [optional] |
| **analytics_off** | [**Array&lt;AnalyticsOffAccount&gt;**](AnalyticsOffAccount.md) | The X accounts read whose analytics sync does not run: their stored numbers are not refreshed, and their posts without any stay pending. On a list, on the first page. Absent when there are none, and on the groupBy and changedSince reads other than groupBy&#x3D;post. | [optional] |
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
  sync_requested_account_ids: null,
  analytics_off: null,
  metrics_sample: null
)
```

