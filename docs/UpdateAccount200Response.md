# Zernio::UpdateAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **x_capabilities** | [**UpdateAccount200ResponseXCapabilities**](UpdateAccount200ResponseXCapabilities.md) |  | [optional] |
| **meta_ads_sync_enabled** | **Boolean** | The resulting setting, returned only when the request body included &#x60;metaAdsSyncEnabled&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccount200Response.new(
  message: null,
  username: null,
  display_name: null,
  x_capabilities: null,
  meta_ads_sync_enabled: null
)
```

