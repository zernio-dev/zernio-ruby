# Zernio::ListLeadForms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **forms** | [**Array&lt;LeadGenForm&gt;**](LeadGenForm.md) |  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |
| **meta** | [**LeadFormResponseMeta**](LeadFormResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeadForms200Response.new(
  status: success,
  forms: null,
  pagination: null,
  meta: null
)
```

