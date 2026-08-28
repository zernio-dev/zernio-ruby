# Zernio::WebhookPayloadPhoneNumberStockAvailableStock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 country code of the watched country. |  |
| **types** | [**Array&lt;WebhookPayloadPhoneNumberStockAvailableStockTypesInner&gt;**](WebhookPayloadPhoneNumberStockAvailableStockTypesInner.md) | Number types deliverable at sweep time. Only types with stock are listed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPhoneNumberStockAvailableStock.new(
  country: null,
  types: null
)
```

