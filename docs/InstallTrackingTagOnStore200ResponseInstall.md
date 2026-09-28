# Zernio::InstallTrackingTagOnStore200ResponseInstall

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
| **replaced_tag_id** | **String** | Shopify only: the pixel this install replaced on the store, if any. | [optional] |
| **sidebar_name** | **String** | WordPress only: name of the widget area used. | [optional] |
| **created** | **Boolean** | WordPress only: false when an existing Zernio widget was updated. | [optional] |
| **homepage_check** | **String** | WordPress only: whether the pixel appeared in the homepage HTML. &#x60;not_found&#x60; can be a stale page cache. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstallTrackingTagOnStore200ResponseInstall.new(
  store_account_id: null,
  platform: null,
  installed: null,
  shop_domain: acme.myshopify.com,
  installed_tag_id: null,
  web_pixel_id: null,
  site_url: null,
  method: null,
  widget_id: null,
  sidebar_id: null,
  replaced_tag_id: null,
  sidebar_name: null,
  created: null,
  homepage_check: null
)
```

