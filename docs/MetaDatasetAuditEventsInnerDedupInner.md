# Zernio::MetaDatasetAuditEventsInnerDedupInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **browser_with_key_pct** | **Float** |  |  |
| **server_with_key_pct** | **Float** |  |  |
| **browser_deduped_pct** | **Float** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAuditEventsInnerDedupInner.new(
  key: event_id,
  browser_with_key_pct: null,
  server_with_key_pct: null,
  browser_deduped_pct: null
)
```

