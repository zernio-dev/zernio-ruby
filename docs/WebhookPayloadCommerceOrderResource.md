# Zernio::WebhookPayloadCommerceOrderResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Platform-native order id. | [optional] |
| **status** | [**CommerceOrderStatus**](CommerceOrderStatus.md) |  | [optional] |
| **platform_status** | **String** | Raw platform status, e.g. UNFULFILLED on Shopify or processing on WooCommerce. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommerceOrderResource.new(
  type: null,
  id: null,
  status: null,
  platform_status: null
)
```

