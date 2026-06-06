# Zernio::ValidateWhatsAppNumberKycAddress200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional] |
| **skipped** | **Boolean** | true when no &#x60;administrative_area&#x60; was supplied, so no pre-check ran. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidateWhatsAppNumberKycAddress200Response.new(
  ok: true,
  skipped: null
)
```

