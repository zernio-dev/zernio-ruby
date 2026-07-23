# Zernio::GetPhoneNumberKycForm200ResponseReusableOptionsInnerDetailsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |
| **document_id** | **String** | Present on document rows — the Telnyx document id. GET /v1/whatsapp/phone-numbers/kyc/document/{documentId} streams it (auth-scoped, inline PDF). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberKycForm200ResponseReusableOptionsInnerDetailsInner.new(
  label: null,
  value: null,
  document_id: null
)
```

