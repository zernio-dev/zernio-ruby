# Zernio::SubmitPhoneNumberKycRequestDocumentsInnerOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  |  |
| **document_id** | **String** | Id from POST /v1/phone-numbers/kyc/upload-document. |  |
| **issued_at** | **Date** | Date printed on the document (YYYY-MM-DD), for slots the regulator windows such as proof of address. The pre-submit review trusts it over its own read of the PDF. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitPhoneNumberKycRequestDocumentsInnerOneOf1.new(
  requirement_id: null,
  document_id: null,
  issued_at: null
)
```

