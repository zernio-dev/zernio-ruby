# Zernio::StorePixelInstall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **shop_domain** | **String** |  | [optional] |
| **installed** | **Boolean** | True when this tag is the pixel the store fires. | [optional] |
| **installed_tag_id** | **String** | The Meta pixel the store fires now (may be a different tag), or null. | [optional] |
| **web_pixel_id** | **String** | Shopify web pixel id, or null when nothing is installed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StorePixelInstall.new(
  store_account_id: null,
  platform: null,
  shop_domain: acme.myshopify.com,
  installed: null,
  installed_tag_id: null,
  web_pixel_id: null
)
```

