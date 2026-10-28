# Zernio::PostAuthenticityReasonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |
| **weight** | **Float** | Points taken off 100. Zero for no_watch_signal, which only lowers confidence. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostAuthenticityReasonsInner.new(
  code: null,
  weight: null
)
```

