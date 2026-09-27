# Zernio::ListCustomConversionGoals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **goals** | [**Array&lt;GoogleCustomConversionGoal&gt;**](GoogleCustomConversionGoal.md) |  | [optional] |
| **cached_at** | **Time** |  | [optional] |
| **stale** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCustomConversionGoals200Response.new(
  customer_id: null,
  goals: null,
  cached_at: null,
  stale: null
)
```

