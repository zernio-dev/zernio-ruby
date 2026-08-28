# Zernio::WebhookPayloadPhoneNumberStockAvailableStockTypesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_type** | **String** | local, mobile, national or toll_free. |  |
| **available_count** | **Integer** | Deliverable numbers at sweep time; first come, first served. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPhoneNumberStockAvailableStockTypesInner.new(
  number_type: null,
  available_count: null
)
```

