# Zernio::ListAccountCallouts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **callouts** | [**Array&lt;ListAccountCallouts200ResponseCalloutsInner&gt;**](ListAccountCallouts200ResponseCalloutsInner.md) |  | [optional] |
| **cached_at** | **Time** | When this list was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

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

