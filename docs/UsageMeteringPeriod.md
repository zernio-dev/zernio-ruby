# Zernio::UsageMeteringPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Time** |  | [optional] |
| **_end** | **Time** |  | [optional] |
| **source** | **String** | &#x60;cycle&#x60; &#x3D; a real billing period resolved; &#x60;window&#x60; &#x3D; trailing/custom window (or cycle fallback). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMeteringPeriod.new(
  start: null,
  _end: null,
  source: null
)
```

