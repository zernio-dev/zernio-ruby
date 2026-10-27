# Zernio::ListEmailThreads200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;EmailThread&gt;**](EmailThread.md) |  | [optional] |
| **pagination** | [**CursorPagination**](CursorPagination.md) |  | [optional] |
| **meta** | [**EmailListMeta**](EmailListMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEmailThreads200Response.new(
  data: null,
  pagination: null,
  meta: null
)
```

