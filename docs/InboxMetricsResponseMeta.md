# Zernio::InboxMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |
| **entity** | **String** |  |  |
| **granularity** | **String** |  |  |
| **group_by** | **Array&lt;String&gt;** |  |  |
| **from_date** | **String** |  |  |
| **to_date** | **String** |  |  |
| **total** | **Integer** | With groupBy&#x3D;conversation and include&#x3D;total: the conversations the list holds, up to 100,000. |  |
| **total_is_capped** | **Boolean** | true when the conversation list holds more than 100,000 conversations. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxMetricsResponseMeta.new(
  stale: null,
  stale_since: null,
  entity: null,
  granularity: null,
  group_by: null,
  from_date: null,
  to_date: null,
  total: null,
  total_is_capped: null
)
```

