# Zernio::CreateLeadFormTestLead200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **test_lead** | [**CreateLeadFormTestLead200ResponseTestLead**](CreateLeadFormTestLead200ResponseTestLead.md) |  | [optional] |
| **meta** | [**LeadFormResponseMeta**](LeadFormResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormTestLead200Response.new(
  status: success,
  test_lead: null,
  meta: null
)
```

