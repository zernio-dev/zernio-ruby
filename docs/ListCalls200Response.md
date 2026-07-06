# Zernio::ListCalls200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calls** | [**Array&lt;ListCalls200ResponseCallsInner&gt;**](ListCalls200ResponseCallsInner.md) |  | [optional] |
| **next_cursor** | **Time** | Pass as &#x60;before&#x60; for the next page; null on the last page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCalls200Response.new(
  calls: null,
  next_cursor: null
)
```

