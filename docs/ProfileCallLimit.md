# Zernio::ProfileCallLimit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The limit, or null when none is set at this level. |  |
| **used** | **Float** | Used in the current window, calls still in progress included. |  |
| **remaining** | **Float** | What is left before the limit; null when there is no limit. |  |
| **window** | **String** | &#x60;concurrent&#x60; counts calls in progress now; the rolling windows end now. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ProfileCallLimit.new(
  limit: null,
  used: null,
  remaining: null,
  window: null
)
```

