# Zernio::CreatePhoneNumberStockWatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 code of a country listed by GET /v1/phone-numbers/countries. |  |
| **number_type** | **String** | Narrow the watch to one number type. Omit to be notified when any type in the country is back. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberStockWatchRequest.new(
  country: null,
  number_type: null
)
```

