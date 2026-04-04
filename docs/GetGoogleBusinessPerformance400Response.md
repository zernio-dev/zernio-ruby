# Late::GetGoogleBusinessPerformance400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **valid_metrics** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetGoogleBusinessPerformance400Response.new(
  error: Invalid metrics: INVALID_METRIC,
  valid_metrics: null
)
```

