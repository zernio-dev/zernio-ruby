# Zernio::SubmitPhoneNumberKycRequestAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **business_name** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **street_address** | **String** |  | [optional] |
| **locality** | **String** |  | [optional] |
| **administrative_area** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitPhoneNumberKycRequestAddress.new(
  requirement_id: null,
  country_code: null,
  business_name: null,
  first_name: null,
  last_name: null,
  street_address: null,
  locality: null,
  administrative_area: null,
  postal_code: null
)
```

