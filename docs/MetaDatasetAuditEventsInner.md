# Zernio::MetaDatasetAuditEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **last7_days** | **Integer** |  |  |
| **last24_hours** | **Integer** |  |  |
| **last_seen_hour** | **Time** | Start of the last hour Meta counted the event in: Meta&#39;s stats are hourly. |  |
| **daily** | [**Array&lt;MetaDatasetAuditEventsInnerDailyInner&gt;**](MetaDatasetAuditEventsInnerDailyInner.md) |  |  |
| **server_share_pct** | **Float** | Percent of the window&#39;s events received through the Conversions API. Null when not measured (only the 12 busiest events are split by source). |  |
| **match_quality** | **Float** | Event Match Quality, 0 to 10. Meta rates 6 and above as good. |  |
| **match_keys** | [**Array&lt;MetaDatasetAuditEventsInnerMatchKeysInner&gt;**](MetaDatasetAuditEventsInnerMatchKeysInner.md) |  |  |
| **diagnostics** | [**Array&lt;MetaDatasetAuditEventsInnerDiagnosticsInner&gt;**](MetaDatasetAuditEventsInnerDiagnosticsInner.md) |  |  |
| **dedup** | [**Array&lt;MetaDatasetAuditEventsInnerDedupInner&gt;**](MetaDatasetAuditEventsInnerDedupInner.md) | Per deduplication key, the share of browser and server copies carrying it and of browser copies Meta paired through it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAuditEventsInner.new(
  name: Purchase,
  last7_days: null,
  last24_hours: null,
  last_seen_hour: null,
  daily: null,
  server_share_pct: null,
  match_quality: null,
  match_keys: null,
  diagnostics: null,
  dedup: null
)
```

