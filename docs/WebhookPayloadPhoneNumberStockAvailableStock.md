# Zernio::WebhookPayloadPhoneNumberStockAvailableStock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 country code of the watched country. |  |
| **types** | [**Array&lt;WebhookPayloadPhoneNumberStockAvailableStockTypesInner&gt;**](WebhookPayloadPhoneNumberStockAvailableStockTypesInner.md) | Number types deliverable at sweep time. Only types with stock are listed. |  |
| **area_code** | **String** | Set when the watch named an area: the area code (NDC) that is back in stock. | [optional] |
| **area_name** | **String** | The name of that area, when known. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPhoneNumberStockAvailableStock.new(
  country: null,
  types: null,
  area_code: null,
  area_name: null
)
```

