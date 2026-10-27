# Zernio::ListEmailMessages200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;EmailMessage&gt;**](EmailMessage.md) |  | [optional] |
| **pagination** | [**CursorPagination**](CursorPagination.md) |  | [optional] |
| **meta** | [**EmailListMeta**](EmailListMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEmailMessages200Response.new(
  data: null,
  pagination: null,
  meta: null
)
```

