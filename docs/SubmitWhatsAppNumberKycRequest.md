# Zernio::SubmitWhatsAppNumberKycRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **country** | **String** |  |  |
| **reuse** | **Boolean** | Reuse a prior approved verification for this country (skips document/field collection; places the order immediately). | [optional] |
| **end_user_first_name** | **String** | End user&#39;s legal first name. Required when the country has an action/ID-verification (Onfido) requirement. | [optional] |
| **end_user_last_name** | **String** | End user&#39;s legal last name. Same condition as endUserFirstName. | [optional] |
| **values** | **Hash&lt;String, String&gt;** | requirementId → textual value | [optional] |
| **documents** | [**Array&lt;SubmitWhatsAppNumberKycRequestDocumentsInner&gt;**](SubmitWhatsAppNumberKycRequestDocumentsInner.md) |  | [optional] |
| **address** | [**SubmitWhatsAppNumberKycRequestAddress**](SubmitWhatsAppNumberKycRequestAddress.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitWhatsAppNumberKycRequest.new(
  profile_id: null,
  country: null,
  reuse: null,
  end_user_first_name: null,
  end_user_last_name: null,
  values: null,
  documents: null,
  address: null
)
```

