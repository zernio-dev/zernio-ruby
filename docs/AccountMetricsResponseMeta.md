# Zernio::AccountMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |
| **entity** | **String** |  |  |
| **granularity** | **String** |  |  |
| **group_by** | **String** |  |  |
| **attribution** | **String** |  |  |
| **from_date** | **String** |  |  |
| **to_date** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountMetricsResponseMeta.new(
  stale: null,
  stale_since: null,
  entity: null,
  granularity: null,
  group_by: null,
  attribution: null,
  from_date: null,
  to_date: null
)
```

