# Zernio::CheckPhoneNumberPortabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_numbers** | **Array&lt;String&gt;** | E.164 numbers to check, e.g. +13035550000. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberPortabilityRequest.new(
  phone_numbers: null
)
```

