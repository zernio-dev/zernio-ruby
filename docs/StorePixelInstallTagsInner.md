# Zernio::StorePixelInstallTagsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **site_tag_id** | **String** |  | [optional] |
| **widget_id** | **String** | WordPress only. | [optional] |
| **sidebar_id** | **String** | WordPress only. | [optional] |
| **active** | **Boolean** | WordPress only: false when the widget sits outside an active widget area. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StorePixelInstallTagsInner.new(
  platform: null,
  site_tag_id: null,
  widget_id: null,
  sidebar_id: null,
  active: null
)
```

