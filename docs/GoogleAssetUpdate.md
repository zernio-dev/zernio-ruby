# Zernio::GoogleAssetUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_resource_name** | **String** | Asset resource name returned by a list operation. Must belong to the selected customer. |  |
| **sitelink_asset** | [**UpdateAccountSitelinksRequestUpdatesInnerSitelinkAsset**](UpdateAccountSitelinksRequestUpdatesInnerSitelinkAsset.md) |  | [optional] |
| **final_urls** | **Array&lt;String&gt;** |  | [optional] |
| **callout_asset** | [**UpdateAccountCalloutsRequestUpdatesInnerCalloutAsset**](UpdateAccountCalloutsRequestUpdatesInnerCalloutAsset.md) |  | [optional] |
| **structured_snippet_asset** | [**GoogleStructuredSnippet**](GoogleStructuredSnippet.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAssetUpdate.new(
  asset_resource_name: null,
  sitelink_asset: null,
  final_urls: null,
  callout_asset: null,
  structured_snippet_asset: null
)
```

