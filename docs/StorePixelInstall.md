# Zernio::StorePixelInstall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **installed** | **Boolean** | Shopify: this tag is the pixel the store fires. WordPress: the Zernio widget for this tag is in an active widget area with its script intact. | [optional] |
| **shop_domain** | **String** | Shopify only. | [optional] |
| **installed_tag_id** | **String** | Shopify only: the Meta pixel the store fires now (may be a different tag), or null. | [optional] |
| **web_pixel_id** | **String** | Shopify only: web pixel id, or null when nothing is installed. | [optional] |
| **site_url** | **String** | WordPress only. | [optional] |
| **method** | **String** | WordPress only. | [optional] |
| **widget_id** | **String** | WordPress only: widget id, e.g. &#x60;custom_html-3&#x60;. | [optional] |
| **sidebar_id** | **String** | WordPress only: widget area holding the widget. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StorePixelInstall.new(
  store_account_id: null,
  platform: null,
  installed: null,
  shop_domain: acme.myshopify.com,
  installed_tag_id: null,
  web_pixel_id: null,
  site_url: null,
  method: null,
  widget_id: null,
  sidebar_id: null
)
```

