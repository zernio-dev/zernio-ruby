# Zernio::RemediatePhoneNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **phone_number** | [**RemediatePhoneNumber200ResponsePhoneNumber**](RemediatePhoneNumber200ResponsePhoneNumber.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemediatePhoneNumber200Response.new(
  status: resubmitted,
  phone_number: null
)
```

