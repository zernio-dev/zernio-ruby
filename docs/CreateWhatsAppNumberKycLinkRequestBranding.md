# Zernio::CreateWhatsAppNumberKycLinkRequestBranding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | Your company name, shown on the hosted page. | [optional] |
| **logo_url** | **String** | Logo shown above the form. | [optional] |
| **brand_color** | **String** | Hex color (e.g. #1a73e8) used as a brand accent on the page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppNumberKycLinkRequestBranding.new(
  company_name: null,
  logo_url: null,
  brand_color: null
)
```

