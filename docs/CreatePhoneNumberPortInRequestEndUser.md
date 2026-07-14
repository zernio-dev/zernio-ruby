# Zernio::CreatePhoneNumberPortInRequestEndUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_name** | **String** | Account holder / business name, as on the carrier account. |  |
| **auth_person_name** | **String** | Full name (first + last) of the person authorizing the port — must match the LOA signature. |  |
| **billing_phone_number** | **String** | Phone number on the losing carrier&#39;s bill. Defaults to the ported number itself on single-number orders. Validated as a real phone number when present. | [optional] |
| **account_number** | **String** | Account number with the losing carrier — required (carriers reject ports without it; on prepaid mobile plans it is often the phone number itself). |  |
| **pin_passcode** | **String** | Transfer PIN. Required for mobile numbers (wireless carriers reject PIN-less ports). Forwarded to the carrier, never stored. | [optional] |
| **street_address** | **String** |  |  |
| **extended_address** | **String** |  | [optional] |
| **locality** | **String** |  |  |
| **administrative_area** | **String** | 2-letter US state / CA province code (full names are accepted and normalized). |  |
| **postal_code** | **String** | US ZIP (5 digits) or Canadian postal code, matching countryCode. |  |
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

