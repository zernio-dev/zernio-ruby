# Zernio::CreateBrandedCallingIdentityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enterprise_id** | **String** | A business from POST /v1/branded-calling/enterprises. |  |
| **display_name** | **String** | Shown on the callee&#39;s screen. No emoji. |  |
| **call_reasons** | **Array&lt;String&gt;** | 1 to 10 reasons you call, each up to 64 characters. Pick from GET /v1/branded-calling/call-reasons to skip manual vetting. |  |
| **logo_url** | **String** | HTTPS URL of a PNG, JPEG, WebP or SVG logo. Zernio converts it to the 256x256 BMP the carriers require and hosts it. | [optional] |
| **authorizer** | [**CreateBrandedCallingIdentityRequestAuthorizer**](CreateBrandedCallingIdentityRequestAuthorizer.md) |  |  |
| **references** | [**BrandedCallingReferences**](BrandedCallingReferences.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBrandedCallingIdentityRequest.new(
  enterprise_id: null,
  display_name: null,
  call_reasons: null,
  logo_url: null,
  authorizer: null,
  references: null
)
```

