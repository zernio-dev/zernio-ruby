# Zernio::CreateLeadForm201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **form** | [**UpdateFacebookPage200ResponseSelectedPage**](UpdateFacebookPage200ResponseSelectedPage.md) |  | [optional] |
| **meta** | [**LeadFormResponseMeta**](LeadFormResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadForm201Response.new(
  status: success,
  form: null,
  meta: null
)
```

