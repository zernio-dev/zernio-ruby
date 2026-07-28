# Zernio::PreflightSmsRegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_type** | **String** |  |  |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **brand** | **Object** | Same shape as the registration &#x60;brand&#x60;. |  |
| **campaign** | **Object** | Same shape as the registration &#x60;campaign&#x60;. |  |
| **messaging_brand_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreflightSmsRegistrationRequest.new(
  registration_type: null,
  phone_numbers: null,
  brand: null,
  campaign: null,
  messaging_brand_name: null
)
```

