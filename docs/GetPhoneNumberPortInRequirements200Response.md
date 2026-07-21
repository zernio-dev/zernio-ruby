# Zernio::GetPhoneNumberPortInRequirements200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **supported** | **Boolean** | false when the combination includes a step that can&#39;t be completed through the API (e.g. an in-person identity verification) — porting it needs support. | [optional] |
| **fields** | [**Array&lt;GetPhoneNumberPortInRequirements200ResponseFieldsInner&gt;**](GetPhoneNumberPortInRequirements200ResponseFieldsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberPortInRequirements200Response.new(
  country: null,
  number_type: null,
  supported: null,
  fields: null
)
```

