# Zernio::DisableSmsOnNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Always false after a successful disable. | [optional] |
| **phone_number** | **String** |  | [optional] |
| **disabled** | **Boolean** | False when SMS was already off. Legacy field; prefer &#x60;enabled&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DisableSmsOnNumber200Response.new(
  enabled: null,
  phone_number: null,
  disabled: null
)
```

