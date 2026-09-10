# Zernio::GooglePmaxAssetGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **resource_name** | **String** |  |  |
| **name** | **String** |  |  |
| **status** | **String** | Asset-group status on Google. Campaign status independently controls delivery. |  |
| **final_urls** | **Array&lt;String&gt;** |  |  |
| **assets** | [**Array&lt;GooglePmaxAssetGroupAssetsInner&gt;**](GooglePmaxAssetGroupAssetsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroup.new(
  id: null,
  resource_name: null,
  name: null,
  status: null,
  final_urls: null,
  assets: null
)
```

