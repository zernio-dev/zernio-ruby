# Zernio::UpdateAccountSitelinksRequestUpdatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_resource_name** | **String** | Asset resource name returned by a list operation. Must belong to the selected customer. |  |
| **sitelink_asset** | [**UpdateAccountSitelinksRequestUpdatesInnerSitelinkAsset**](UpdateAccountSitelinksRequestUpdatesInnerSitelinkAsset.md) |  | [optional] |
| **final_urls** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccountSitelinksRequestUpdatesInner.new(
  asset_resource_name: null,
  sitelink_asset: null,
  final_urls: null
)
```

