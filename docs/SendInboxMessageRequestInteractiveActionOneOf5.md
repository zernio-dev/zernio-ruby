# Zernio::SendInboxMessageRequestInteractiveActionOneOf5

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta catalog ID connected to the WhatsApp Business Account. |  |
| **product_retailer_id** | **String** | Retailer ID (SKU) of the product inside the catalog. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractiveActionOneOf5.new(
  catalog_id: null,
  product_retailer_id: null
)
```

