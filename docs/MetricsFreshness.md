# Zernio::MetricsFreshness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale** | **Boolean** | True when the analytics backend was over capacity and part of this answer came from a stored copy instead of a live read. |  |
| **stale_since** | **String** | With stale&#x3D;true: when the oldest stored copy used stopped being fresh. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetricsFreshness.new(
  stale: null,
  stale_since: null
)
```

