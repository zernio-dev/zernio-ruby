# Late::GetPreverifiedWhatsAppNumbers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pre_verified_ids** | **Array&lt;String&gt;** | IDs to pass in FB.login() extras.setup.preVerifiedPhone.ids | [optional] |
| **numbers** | [**Array&lt;GetPreverifiedWhatsAppNumbers200ResponseNumbersInner&gt;**](GetPreverifiedWhatsAppNumbers200ResponseNumbersInner.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetPreverifiedWhatsAppNumbers200Response.new(
  pre_verified_ids: null,
  numbers: null
)
```

