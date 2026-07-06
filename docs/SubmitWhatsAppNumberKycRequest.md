# Zernio::SubmitWhatsAppNumberKycRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **country** | **String** |  |  |
| **submission_id** | **String** | Idempotency token for this submission attempt. A retry/double-submit with the same token returns the same number; omit and each call creates a new number. | [optional] |
| **quantity** | **Integer** | Provision several same-country numbers from one submission (1-5). The single verification covers all of them; each number is billed only when it activates. Numbers that fail to order are skipped (best-effort). | [optional][default to 1] |
| **reuse** | **Boolean** | Reuse a prior approved verification for this country (skips document/field collection; places the order immediately). | [optional] |
| **reuse_from** | **String** | Which approved verification to reuse when several exist: the phone number it was originally approved for (GET reusable.options[].fromPhoneNumber). Omitted &#x3D; newest. No match &#x3D; 409. | [optional] |
| **end_user_first_name** | **String** | End user&#39;s legal first name. Required when the country has an action/ID-verification (Onfido) requirement. | [optional] |
| **end_user_last_name** | **String** | End user&#39;s legal last name. Same condition as endUserFirstName. | [optional] |
| **values** | **Hash&lt;String, String&gt;** | requirementId → textual value | [optional] |
| **documents** | [**Array&lt;SubmitWhatsAppNumberKycRequestDocumentsInner&gt;**](SubmitWhatsAppNumberKycRequestDocumentsInner.md) | One per document requirement. Each is EITHER inline base64 OR a &#x60;documentId&#x60; returned by POST /v1/whatsapp/phone-numbers/kyc/upload-document (use the upload endpoint for large files to stay under the request-size limit). | [optional] |
| **address** | [**SubmitPhoneNumberKycRequestAddress**](SubmitPhoneNumberKycRequestAddress.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitWhatsAppNumberKycRequest.new(
  profile_id: null,
  country: null,
  submission_id: null,
  quantity: null,
  reuse: null,
  reuse_from: null,
  end_user_first_name: null,
  end_user_last_name: null,
  values: null,
  documents: null,
  address: null
)
```

