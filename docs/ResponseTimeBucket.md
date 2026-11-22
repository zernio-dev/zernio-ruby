# Zernio::ResponseTimeBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **lower_seconds** | **Integer** |  |  |
| **upper_seconds** | **Integer** | null for the open-ended last bucket. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ResponseTimeBucket.new(
  label: null,
  lower_seconds: null,
  upper_seconds: null
)
```

