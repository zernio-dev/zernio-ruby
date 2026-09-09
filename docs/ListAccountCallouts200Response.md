# Zernio::ListAccountCallouts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **callouts** | [**Array&lt;ListAccountCallouts200ResponseCalloutsInner&gt;**](ListAccountCallouts200ResponseCalloutsInner.md) |  | [optional] |
| **cached_at** | **Time** | Time of the cached Google read. Null when no cache was used. | [optional] |
| **stale** | **Boolean** | True when exhausted quota required returning the last successful read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAccountCallouts200Response.new(
  customer_id: null,
  callouts: null,
  cached_at: null,
  stale: null
)
```

