# Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **features** | **Array&lt;String&gt;** | Provider capability list for this number (e.g. voice, sms, mms). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner.new(
  phone_number: null,
  features: null
)
```

