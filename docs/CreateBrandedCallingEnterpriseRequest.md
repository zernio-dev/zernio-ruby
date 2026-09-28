# Zernio::CreateBrandedCallingEnterpriseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_name** | **String** | Exactly as on the tax record. |  |
| **doing_business_as** | **String** |  |  |
| **organization_type** | **String** |  |  |
| **organization_legal_type** | **String** |  |  |
| **country_code** | **String** | ISO 3166-1 alpha-2. US or CA. |  |
| **jurisdiction_of_incorporation** | **String** | State, province or country of registration. |  |
| **website** | **String** |  |  |
| **fein** | **String** | US Federal Employer Identification Number (NN-NNNNNNN) or the Canadian equivalent. Stored encrypted; only the last four digits are ever returned. |  |
| **industry** | **String** | One of the carrier industry labels, e.g. technology, healthcare, retail, finance, legal, insurance, real estate, logistics, education. |  |
| **number_of_employees** | **String** |  |  |
| **organization_contact** | [**BrandedCallingContact**](BrandedCallingContact.md) |  |  |
| **billing_contact** | [**BrandedCallingContact**](BrandedCallingContact.md) |  |  |
| **physical_address** | [**BrandedCallingAddress**](BrandedCallingAddress.md) |  |  |
| **billing_address** | [**BrandedCallingAddress**](BrandedCallingAddress.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBrandedCallingEnterpriseRequest.new(
  legal_name: null,
  doing_business_as: null,
  organization_type: null,
  organization_legal_type: null,
  country_code: null,
  jurisdiction_of_incorporation: null,
  website: null,
  fein: null,
  industry: null,
  number_of_employees: null,
  organization_contact: null,
  billing_contact: null,
  physical_address: null,
  billing_address: null
)
```

