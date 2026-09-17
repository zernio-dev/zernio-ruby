# Zernio::UpdateWhatsAppCommerceSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp account ID |  |
| **catalog_account_id** | **String** |  | [optional] |
| **is_cart_enabled** | **Boolean** |  | [optional] |
| **is_catalog_visible** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppCommerceSettingsRequest.new(
  account_id: null,
  catalog_account_id: null,
  is_cart_enabled: null,
  is_catalog_visible: null
)
```

