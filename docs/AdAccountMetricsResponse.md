# Zernio::AdAccountMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Hash&lt;String, Float&gt;** | Each uploaded result metric summed over the range, by metric key. |  |
| **meta** | [**AdAccountMetricsResponseMeta**](AdAccountMetricsResponseMeta.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdAccountMetricsResponse.new(
  results: null,
  meta: null
)
```

