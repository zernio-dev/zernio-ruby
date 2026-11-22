# Zernio::ListEmailDrafts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;EmailDraft&gt;**](EmailDraft.md) |  | [optional] |
| **pagination** | [**CursorPagination**](CursorPagination.md) |  | [optional] |
| **meta** | [**EmailListMeta**](EmailListMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEmailDrafts200Response.new(
  data: null,
  pagination: null,
  meta: null
)
```

