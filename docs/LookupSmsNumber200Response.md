# Zernio::LookupSmsNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **carrier_name** | **String** |  | [optional] |
| **line_type** | **String** |  | [optional] |
| **sms_reachable** | **Boolean** | True when the line type can receive SMS (not a landline). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LookupSmsNumber200Response.new(
  phone_number: null,
  carrier_name: null,
  line_type: null,
  sms_reachable: null
)
```

