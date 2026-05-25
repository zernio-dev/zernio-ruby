# Zernio::ListLeads200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **leads** | [**Array&lt;ListLeads200ResponseLeadsInner&gt;**](ListLeads200ResponseLeadsInner.md) |  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeads200Response.new(
  status: success,
  leads: null,
  pagination: null
)
```

