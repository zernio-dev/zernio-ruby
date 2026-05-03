# Zernio::GetLeadForm200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **form** | [**LeadGenForm**](LeadGenForm.md) |  | [optional] |
| **meta** | [**LeadFormResponseMeta**](LeadFormResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLeadForm200Response.new(
  status: success,
  form: null,
  meta: null
)
```

