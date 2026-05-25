# Zernio::ListLeadForms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **forms** | **Array&lt;Object&gt;** |  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeadForms200Response.new(
  status: success,
  forms: null,
  pagination: null
)
```

