# Zernio::LookupSmsNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **carrier_name** | **String** |  | [optional] |
| **line_type** | **String** |  | [optional] |
| **sms_reachable** | **Boolean** | False for landlines, toll-free numbers, ambiguous fixed-or-mobile lines and carriers whose numbers are not SMS-routable. True is a best guess, not a delivery guarantee. | [optional] |

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

