# Zernio::GetPhoneNumberKycForm200ResponseReusable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** |  | [optional] |
| **from_phone_number** | **String** |  | [optional] |
| **details** | [**Array&lt;GetPhoneNumberKycForm200ResponseReusableDetailsInner&gt;**](GetPhoneNumberKycForm200ResponseReusableDetailsInner.md) | Human-readable summary of the verification on file (field labels + values, plus the address as one line). Best-effort — may be empty if the provider lookup fails. | [optional] |
| **options** | [**Array&lt;GetPhoneNumberKycForm200ResponseReusableOptionsInner&gt;**](GetPhoneNumberKycForm200ResponseReusableOptionsInner.md) | One entry per distinct approved verification, newest first. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberKycForm200ResponseReusable.new(
  available: null,
  from_phone_number: null,
  details: null,
  options: null
)
```

