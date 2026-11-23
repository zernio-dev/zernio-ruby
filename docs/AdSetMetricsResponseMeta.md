# Zernio::AdSetMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |
| **from_date** | **String** |  |  |
| **to_date** | **String** |  |  |
| **missing_ids** | **Array&lt;String&gt;** | With adSetId, asked ids that are not ad sets the caller can see. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdSetMetricsResponseMeta.new(
  stale: null,
  stale_since: null,
  from_date: null,
  to_date: null,
  missing_ids: null
)
```

