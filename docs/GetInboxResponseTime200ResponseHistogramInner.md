# Zernio::GetInboxResponseTime200ResponseHistogramInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket** | **String** | Human label (0-1m, 1-5m, 5-15m, 15-60m, 1-4h, 4-24h, 1d+) | [optional] |
| **lower_seconds** | **Integer** |  | [optional] |
| **upper_seconds** | **Integer** | null on the open-ended last bucket | [optional] |
| **count** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxResponseTime200ResponseHistogramInner.new(
  bucket: null,
  lower_seconds: null,
  upper_seconds: null,
  count: null
)
```

