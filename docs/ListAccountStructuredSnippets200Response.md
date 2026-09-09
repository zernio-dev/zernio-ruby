# Zernio::ListAccountStructuredSnippets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **structured_snippets** | [**Array&lt;ListAccountStructuredSnippets200ResponseStructuredSnippetsInner&gt;**](ListAccountStructuredSnippets200ResponseStructuredSnippetsInner.md) |  | [optional] |
| **cached_at** | **Time** | Time of the cached Google read. Null when no cache was used. | [optional] |
| **stale** | **Boolean** | True when exhausted quota required returning the last successful read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAccountStructuredSnippets200Response.new(
  customer_id: null,
  structured_snippets: null,
  cached_at: null,
  stale: null
)
```

