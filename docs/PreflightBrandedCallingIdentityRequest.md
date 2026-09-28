# Zernio::PreflightBrandedCallingIdentityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enterprise_id** | **String** |  |  |
| **display_name** | **String** |  |  |
| **call_reasons** | **Array&lt;String&gt;** |  |  |
| **logo_url** | **String** |  | [optional] |
| **authorizer** | [**PreflightBrandedCallingIdentityRequestAuthorizer**](PreflightBrandedCallingIdentityRequestAuthorizer.md) |  |  |
| **references** | [**BrandedCallingReferences**](BrandedCallingReferences.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreflightBrandedCallingIdentityRequest.new(
  enterprise_id: null,
  display_name: null,
  call_reasons: null,
  logo_url: null,
  authorizer: null,
  references: null
)
```

