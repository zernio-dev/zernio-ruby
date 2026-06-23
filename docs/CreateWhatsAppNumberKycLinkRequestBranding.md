# Zernio::CreateWhatsAppNumberKycLinkRequestBranding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | Your company name | [optional] |
| **logo_url** | **String** | Logo shown above the form. | [optional] |
| **brand_color** | **String** | Hex color (e.g. \&quot;#1a73e8\&quot;) applied to the primary action. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppNumberKycLinkRequestBranding.new(
  company_name: null,
  logo_url: null,
  brand_color: null
)
```

