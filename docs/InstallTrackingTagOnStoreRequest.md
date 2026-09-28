# Zernio::InstallTrackingTagOnStoreRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_account_id** | **String** | The connected Shopify (&#x60;shopify&#x60;) or WordPress (&#x60;wordpress&#x60;) account id. |  |
| **ad_account_id** | **String** | Scopes the tag lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere. | [optional] |
| **sidebar_id** | **String** | WordPress only: widget area to use (see &#x60;install.preflight.sidebars&#x60; from GET). Defaults to a footer area. | [optional] |
| **verify_homepage** | **Boolean** | WordPress only: fetch the homepage afterwards and report &#x60;homepageCheck&#x60;. | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstallTrackingTagOnStoreRequest.new(
  store_account_id: null,
  ad_account_id: null,
  sidebar_id: null,
  verify_homepage: null
)
```

