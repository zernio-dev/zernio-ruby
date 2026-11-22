# Zernio::AudienceUploadUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email, or SHA-256 of it trimmed and lowercased. | [optional] |
| **phone** | **String** | Phone with country code. Plaintext matches on Meta and Google; see the endpoint description before sending it hashed. | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **birth_year** | **String** | YYYY. Meta only. | [optional] |
| **birth_month** | **String** | MM (01-12). Meta only. | [optional] |
| **birth_day** | **String** | DD (01-31). Meta only. | [optional] |
| **gender** | **String** | m or f. Meta only. | [optional] |
| **city** | **String** | Meta only. | [optional] |
| **state** | **String** | Meta only. | [optional] |
| **zip** | **String** |  | [optional] |
| **country** | **String** | ISO 3166-1 alpha-2 code. | [optional] |
| **external_id** | **String** | Your own id for the person. Meta only. | [optional] |
| **region** | **String** | Where the person is (ISO country, or US-CA). With no granted consent, EEA, UK and CH people are dropped before upload. | [optional] |
| **consent** | [**AudienceUploadUserConsent**](AudienceUploadUserConsent.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AudienceUploadUser.new(
  email: null,
  phone: null,
  first_name: null,
  last_name: null,
  birth_year: null,
  birth_month: null,
  birth_day: null,
  gender: null,
  city: null,
  state: null,
  zip: null,
  country: null,
  external_id: null,
  region: null,
  consent: null
)
```

