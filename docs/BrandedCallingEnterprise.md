# Zernio::BrandedCallingEnterprise

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **doing_business_as** | **String** |  | [optional] |
| **organization_type** | **String** |  | [optional] |
| **organization_legal_type** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **jurisdiction_of_incorporation** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |
| **fein_last4** | **String** | Last four digits of the tax id; the full id is never returned. | [optional] |
| **industry** | **String** |  | [optional] |
| **number_of_employees** | **String** |  | [optional] |
| **organization_contact** | [**BrandedCallingContact**](BrandedCallingContact.md) |  | [optional] |
| **billing_contact** | [**BrandedCallingContact**](BrandedCallingContact.md) |  | [optional] |
| **physical_address** | [**BrandedCallingAddress**](BrandedCallingAddress.md) |  | [optional] |
| **billing_address** | [**BrandedCallingAddress**](BrandedCallingAddress.md) |  | [optional] |
| **registered** | **Boolean** | True once the business exists at the carrier (happens when its first identity passes review). | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingEnterprise.new(
  id: null,
  legal_name: null,
  doing_business_as: null,
  organization_type: null,
  organization_legal_type: null,
  country_code: null,
  jurisdiction_of_incorporation: null,
  website: null,
  fein_last4: null,
  industry: null,
  number_of_employees: null,
  organization_contact: null,
  billing_contact: null,
  physical_address: null,
  billing_address: null,
  registered: null,
  created_at: null
)
```

