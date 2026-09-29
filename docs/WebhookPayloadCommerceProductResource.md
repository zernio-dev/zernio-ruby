# Zernio::WebhookPayloadCommerceProductResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Platform-native product id. | [optional] |
| **status** | [**CommerceProductStatus**](CommerceProductStatus.md) |  | [optional] |
| **platform_status** | **String** | Raw platform status, e.g. ACTIVE; null on delete. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommerceProductResource.new(
  type: null,
  id: null,
  status: null,
  platform_status: null
)
```

