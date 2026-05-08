# Zernio::GetConversionMetrics200ResponseRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | YYYY-MM-DD | [optional] |
| **_end** | **String** | YYYY-MM-DD (inclusive) | [optional] |
| **metrics** | [**Hash&lt;String, GetConversionMetrics200ResponseRowsInnerMetricsValue&gt;**](GetConversionMetrics200ResponseRowsInnerMetricsValue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetConversionMetrics200ResponseRowsInner.new(
  start: null,
  _end: null,
  metrics: null
)
```

