# Zernio::GetPhoneNumberKycForm200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **fields** | [**Array&lt;GetPhoneNumberKycForm200ResponseFieldsInner&gt;**](GetPhoneNumberKycForm200ResponseFieldsInner.md) |  | [optional] |
| **reusable** | [**GetPhoneNumberKycForm200ResponseReusable**](GetPhoneNumberKycForm200ResponseReusable.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberKycForm200Response.new(
  country: null,
  number_type: null,
  fields: null,
  reusable: null
)
```

