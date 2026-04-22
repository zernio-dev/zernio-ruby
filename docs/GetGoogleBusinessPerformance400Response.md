# Zernio::GetGoogleBusinessPerformance400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **valid_metrics** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessPerformance400Response.new(
  error: Invalid metrics: INVALID_METRIC,
  valid_metrics: null
)
```

