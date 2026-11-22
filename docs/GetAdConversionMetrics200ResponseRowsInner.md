# Zernio::GetAdConversionMetrics200ResponseRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | YYYY-MM-DD | [optional] |
| **_end** | **String** | YYYY-MM-DD (inclusive) | [optional] |
| **metrics** | [**Hash&lt;String, GetAdConversionMetrics200ResponseRowsInnerMetricsValue&gt;**](GetAdConversionMetrics200ResponseRowsInnerMetricsValue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdConversionMetrics200ResponseRowsInner.new(
  start: null,
  _end: null,
  metrics: null
)
```

