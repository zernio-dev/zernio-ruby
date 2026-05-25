# Zernio::ListFormLeads200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **leads** | [**Array&lt;ListFormLeads200ResponseLeadsInner&gt;**](ListFormLeads200ResponseLeadsInner.md) |  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListFormLeads200Response.new(
  status: success,
  leads: null,
  pagination: null
)
```

