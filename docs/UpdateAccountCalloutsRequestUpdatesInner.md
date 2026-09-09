# Zernio::UpdateAccountCalloutsRequestUpdatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_resource_name** | **String** | Asset resource name returned by a list operation. Must belong to the selected customer. |  |
| **callout_asset** | [**UpdateAccountCalloutsRequestUpdatesInnerCalloutAsset**](UpdateAccountCalloutsRequestUpdatesInnerCalloutAsset.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccountCalloutsRequestUpdatesInner.new(
  asset_resource_name: null,
  callout_asset: null
)
```

