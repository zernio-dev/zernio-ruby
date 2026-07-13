# Zernio::CreatePhoneNumberPortInRequestEndUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_name** | **String** |  |  |
| **auth_person_name** | **String** |  |  |
| **billing_phone_number** | **String** | Phone number on the losing carrier&#39;s bill. Defaults to the ported number itself on single-number orders. | [optional] |
| **account_number** | **String** |  | [optional] |
| **pin_passcode** | **String** | Transfer PIN. Forwarded to the carrier, never stored. | [optional] |
| **street_address** | **String** |  |  |
| **extended_address** | **String** |  | [optional] |
| **locality** | **String** |  |  |
| **administrative_area** | **String** |  |  |
| **postal_code** | **String** |  |  |
| **country_code** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortInRequestEndUser.new(
  entity_name: null,
  auth_person_name: null,
  billing_phone_number: null,
  account_number: null,
  pin_passcode: null,
  street_address: null,
  extended_address: null,
  locality: null,
  administrative_area: null,
  postal_code: null,
  country_code: null
)
```

